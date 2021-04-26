library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity single_ins_tb is
end single_ins_tb;

architecture Behavioral of single_ins_tb is
component CPU 
Port ( Clock : in STD_LOGIC;
           Reset : in STD_LOGIC;
           
           MemoryDataIn : in STD_LOGIC_VECTOR (31 downto 0);
           
           MemoryDataAddress : out STD_LOGIC_VECTOR (31 downto 0); 
           MemoryDataOut : out STD_LOGIC_VECTOR (31 downto 0);
           MemWrite : out STD_LOGIC;
           RSLT : out STD_LOGIC_VECTOR (31 downto 0) -- temporary result to verify instructions are working correctly
           );
end component;

signal CLK : STD_LOGIC;
signal RST : STD_LOGIC;
signal MemoryDataIn : STD_LOGIC_VECTOR(31 downto 0);
signal MemoryDataAddress : STD_LOGIC_VECTOR(31 downto 0);
signal MemoryDataOut : STD_LOGIC_VECTOR(31 downto 0);
signal MemWrite : STD_LOGIC;
signal RSLT : STD_LOGIC_VECTOR(31 downto 0);

begin

U_0: CPU PORT MAP(
    Clock => CLK,
    Reset => RST,
    MemoryDataIn => MemoryDataIn,
    MemoryDataAddress => MemoryDataAddress,
    MemoryDataOut => MemoryDataOut,
    MemWrite => MemWrite,
    RSLT => RSLT
);

clock_gen: process
begin
    CLK <= '0';
    wait for 10 ns;
    CLK <= '1';
    wait for 10 ns;
end process clock_gen;

sim: process
begin
    RST <= '1';
    wait for 10 ns;
    RST <= '0';
    wait for 10 ns;
    
    -- ADDI $1, $1, 5
    MemoryDataIn <= X"20210005";
    wait;
end process sim;


end Behavioral;
