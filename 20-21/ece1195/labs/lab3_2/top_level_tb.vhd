library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_tb is
end top_level_tb;

architecture test of top_level_tb is

signal A : STD_LOGIC_VECTOR (31 downto 0);
signal B : STD_LOGIC_VECTOR (31 downto 0);
signal clk : STD_LOGIC;
signal rst : STD_LOGIC;
signal R   : STD_LOGIC_VECTOR (63 downto 0);
signal done : STD_LOGIC;

component top_level 
    Port ( A    : in  STD_LOGIC_VECTOR (31 downto 0);
           B    : in  STD_LOGIC_VECTOR (31 downto 0);
           clk  : in  STD_LOGIC;
           rst  : in  STD_LOGIC;
           R    : out STD_LOGIC_VECTOR (63 downto 0);
           done : out STD_LOGIC);
end component;

begin
    tl: top_level PORT MAP(A => A, B => B, clk => clk, rst => rst, R => R, done => done);
    
    clock: process
	begin
		clk <= '0';
		wait for 1 ns;
		clk <= '1';
		wait for 1 ns;
	end process clock;
	
	test: process
	begin
	   rst <= '1';
	   wait for 10 ns;
	   rst <= '0';
	   A <= X"00000007";
	   B <= X"00000007";
	   wait until done = '1';
	   assert (R = X"0000000000000031") report "Multiplication failed.";
	   wait for 10 ns;
	   
	   rst <= '1';
	   wait for 10 ns;
	   rst <= '0';
	   A <= X"dddddddd";
	   B <= X"00000000";
	   wait for 10 ns;
	   wait until done = '1';
	   assert (R = X"0000000000000000") report "Multiplication failed.";
	   wait for 10 ns;
	   
	   rst <= '1';
	   wait for 10 ns;
	   rst <= '0';
	   A <= X"dddddddd";
	   B <= X"00000001";
	   wait for 10 ns;
	   wait until done = '1';
	   assert (R = X"00000000dddddddd") report "Multiplication failed.";
	   wait for 10 ns;
	   
	   rst <= '1';
	   wait for 10 ns;
	   rst <= '0';
	   A <= X"0000AAAA";
	   B <= X"00001111";
	   wait for 10 ns;
	   wait until done = '1';
	   assert (R = X"000000000B609F4A") report "Multiplication failed.";
	   wait for 10 ns;
	   
	   rst <= '1';
	   wait for 10 ns;
	   wait;
	end process test;
end test;
