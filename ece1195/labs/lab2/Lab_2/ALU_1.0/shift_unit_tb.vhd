library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity shift_unit_tb is
end shift_unit_tb;

architecture sim of shift_unit_tb is
    component shift_unit is
    port (A     : in STD_LOGIC_VECTOR  (31 downto 0);
          SHAMT : in STD_LOGIC_VECTOR  (4 downto 0);
          ALUOp : in STD_LOGIC_VECTOR  (1 downto 0);
          R     : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
       
    signal A     :  STD_LOGIC_VECTOR (31 downto 0);
    signal SHAMT :  STD_LOGIC_VECTOR (4 downto 0);
    signal ALUOp :  STD_LOGIC_VECTOR (1 downto 0);
    signal R     :  STD_LOGIC_VECTOR (31 downto 0);    
    
begin
    dut: shift_unit
        port map(
            A     => A,
            SHAMT => SHAMT,
            ALUOp => ALUOp,
            R     => R        
        );

    process
   
    begin
        A <= X"FEDCBA98";
        
        SHAMT <= "00000";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"FEDCBA98") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"FEDCBA98") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FEDCBA98") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "00001";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"FDB97530") report "SL failed 1";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"7F6E5D4C") report "SRL failed 1";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FF6E5D4C") report "SRA failed 1";
        wait for 10 ns;
        
        SHAMT <= "00010";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"FB72EA60") report "SL failed 2";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"3FB72EA6") report "SRL failed 2";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFB72EA6") report "SRA failed 2";
        wait for 10 ns;
        
        SHAMT <= "00011";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"F6E5D4C0") report "SL failed 3";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"1FDB9753") report "SRL failed 3";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFDB9753") report "SRA failed 3";
        wait for 10 ns;
        
        SHAMT <= "00100";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"EDCBA980") report "SL failed 4";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0FEDCBA9") report "SRL failed 4";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFEDCBA9") report "SRA failed 4";
        wait for 10 ns;
        
        SHAMT <= "00101";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"DB975300") report "SL failed 5";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"07F6E5D4") report "SRL failed 5";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFF6E5D4") report "SRA failed 5";
        wait for 10 ns;
        
        SHAMT <= "00110";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"B72EA600") report "SL failed 6";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"03FB72EA") report "SRL failed 6";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFB72EA") report "SRA failed 6";
        wait for 10 ns;
        
        SHAMT <= "00111";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"6E5D4C00") report "SL failed 7";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"01FDB975") report "SRL failed 7";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFDB975") report "SRA failed 7";
        wait for 10 ns;
        
        SHAMT <= "01000";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"DCBA9800") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00FEDCBA") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFEDCBA") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "01001";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"B9753000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"007F6E5D") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFF6E5D") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "01010";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"72EA6000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"003FB72E") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFB72E") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "01011";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"E5D4C000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"001FDB97") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFDB97") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "01100";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"CBA98000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"000FEDCB") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFEDCB") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "01101";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"97530000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0007F6E5") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFF6E5") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "01110";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"2EA60000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0003FB72") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFB72") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "01111";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"5D4C0000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0001FDB9") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFDB9") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "10000";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"BA980000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0000FEDC") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFEDC") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "10001";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"75300000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00007F6E") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFF6E") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "10010";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"EA600000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00003FB7") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFB7") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "10011";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"D4C00000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00001FDB") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFDB") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "10100";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"A9800000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00000FED") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFED") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "10101";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"53000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"000007F6") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFF6") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "10110";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"A6000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"000003FB") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFB") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "10111";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"4C000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"000001FD") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFD") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "11000";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"98000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"000000FE") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFE") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "11001";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"30000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0000007F") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "11010";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"60000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0000003F") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "11011";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"C0000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0000001F") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "11100";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"80000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0000000F") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "11101";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"00000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00000007") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "11110";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"00000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00000003") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "SRA failed";
        wait for 10 ns;
        
        SHAMT <= "11111";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"00000000") report "SL failed";
        wait for 10 ns;
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00000001") report "SRL failed";
        wait for 10 ns;
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "SRA failed";
        wait for 10 ns; 
        
        A <= X"0000FFFF";
        SHAMT <= "00010";
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"00003FFF") report "SRA failed - corner case";
    
        report "Simulation finished.";
        wait;
    end process;
end sim;
