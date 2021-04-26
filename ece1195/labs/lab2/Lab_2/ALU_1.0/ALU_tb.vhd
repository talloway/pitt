library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_tb is
end ALU_tb;

architecture sim of ALU_tb is
    component ALU is
    port(
        A        : in    STD_LOGIC_VECTOR (31 downto 0);
        B        : in    STD_LOGIC_VECTOR (31 downto 0);
        SHAMT    : in    STD_LOGIC_VECTOR (4 downto 0);
        ALUOp    : in    STD_LOGIC_VECTOR (3 downto 0);
        R        : out   STD_LOGIC_VECTOR (31 downto 0);
        Overflow : out   STD_LOGIC;
        Zero     : out   STD_LOGIC
    );
    end component;

signal A        :    STD_LOGIC_VECTOR (31 downto 0);
signal B        :    STD_LOGIC_VECTOR (31 downto 0);
signal SHAMT    :    STD_LOGIC_VECTOR (4 downto 0);
signal ALUOp    :    STD_LOGIC_VECTOR (3 downto 0);
signal R        :    STD_LOGIC_VECTOR (31 downto 0);
signal Overflow :    STD_LOGIC;
signal Zero     :    STD_LOGIC;

begin
    dut: ALU port map(
        A        => A,
        B        => B,
        SHAMT    => SHAMT,
        ALUOp    => ALUOp,
        R        => R,
        Overflow => Overflow,
        Zero     => Zero
    );

    process
    begin
        -- Logical unit tests
        A <= X"00000001";
        B <= X"00000002";
        SHAMT <= "00000";
        
        -- Bitwise AND
        ALUOp <= "0000";
        wait for 10 ns;
        assert (R = X"00000000") report "Bitwise AND failed";
        wait for 10 ns;
        
        -- Bitwise OR
        ALUOp <= "0001";
        wait for 10 ns;
        assert (R = X"00000003") report "Bitwise OR failed";
        wait for 10 ns;
        
        -- Bitwise XOR
        ALUOp <= "0010";
        wait for 10 ns;
        assert (R = X"00000003") report "Bitwise XOR failed";
        wait for 10 ns;
        
        -- Bitwise NOR
        ALUOp <= "0011";
        wait for 10 ns;
        assert (R = X"FFFFFFFC") report "Bitwise NOR failed";
        wait for 10 ns;
        
        
        -- Arithmetic unit tests
        
        -- Signed addition
        A <= X"FDCDBACD";
        B <= X"F0000000";
        
        ALUOp <= "0100";
        wait for 10 ns;
        assert (R = X"EDCDBACD") report "Signed addition failed";
        wait for 10 ns;
        
        -- Unsigned addition
        A <= X"0000FFFF";
        B <= X"FFFF0000";
        
        ALUOp <= "0101";
        wait for 10 ns;
        assert (R = X"FFFFFFFF") report "Unsigned addition failed";
        wait for 10 ns;
                
        -- Signed subtraction
        A <= X"0FFFFFFF";
        B <= X"0FFFFFFF";
        
        ALUOp <= "0110";
        wait for 10 ns;
        assert (R = X"00000000") report "Signed subtraction failed";
        wait for 10 ns;
        
        -- Unsigned subtraction
        A <= X"FDCDBACD";
        B <= X"F0000000";
        
        ALUOp <= "0111";
        wait for 10 ns;
        assert (R = X"0DCDBACD") report "Unsigned subtraction failed";
        wait for 10 ns;
        
        
        -- Comparator unit tests
        
        --  Set on less than
        A <= X"0FFFFFFF";
        B <= X"FFFFFFFF";
        
        ALUOp <= "1010";
        wait for 10 ns;
        assert (R = X"00000000") report "Set on less than failed";
        wait for 10 ns;
        
        -- Set on less than unsigned
        A <= X"00000010";
        B <= X"00001000";
        
        ALUOp <= "1011";
        wait for 10 ns;
        assert (R = X"00000001") report "Set on less than unsigned failed";
        wait for 10 ns;
        
        
        -- Shifter unit tests
        
        -- Shift left logical
        A <= X"00000010";
        SHAMT <= "00010";
        
        ALUOp <= "1100";
        wait for 10 ns;
        assert (R = X"00000040") report "Shift left logical failed";
        wait for 10 ns;
        
        -- Shift right logical
        A <= X"10000004";
        SHAMT <= "00010";
        
        ALUOp <= "1110";
        wait for 10 ns;
        assert (R = X"04000001") report "Shift right logical failed";
        wait for 10 ns;
        
        -- Shift right arithmetic
        A <= X"80000004";
        SHAMT <= "00010";
        ALUOp <= "1111";
        wait for 10 ns;
        assert (R = X"E0000001") report "Shift right arithmetic failed";
        wait for 10 ns;
        wait;
    end process;
end sim;
