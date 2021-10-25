library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sign_extend_tb is
end sign_extend_tb;

architecture Behavioral of sign_extend_tb is
    component sign_extend is 
        Port ( A : in STD_LOGIC_VECTOR (15 downto 0);
               B : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    signal A : STD_LOGIC_VECTOR (15 downto 0);
    signal B : STD_LOGIC_VECTOR (31 downto 0);
begin

    se: sign_extend PORT MAP(A => A, B => B);
    
    test: process
    begin
        A <= X"0101";
        wait for 10 ns;
        assert B <= X"00000101" report "0 case failed.";
        wait for 10 ns;
        
        A <= X"F010";
        wait for 10 ns;
        assert B <= X"FFFFF010" report "1 case failed.";
        wait for 10 ns;
        wait;
    end process;
end Behavioral;
