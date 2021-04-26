library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_tb is
    Port (
        reset : in STD_LOGIC;
        clock : in STD_LOGIC
    );
end CPU_tb;

architecture sim of CPU_tb is
    component CPU
        Port ( Clock : in STD_LOGIC;
               Reset : in STD_LOGIC;
           
               MemoryDataIn : in STD_LOGIC_VECTOR (31 downto 0);
             
               MemoryDataAddress : out STD_LOGIC_VECTOR (31 downto 0);
               MemoryDataOut : out STD_LOGIC_VECTOR (31 downto 0);
               MemWrite : out STD_LOGIC
         );
    end component;
    
    component CPU_memory
       PORT( 
          Clk      : IN     std_logic;
          MemWrite : IN     std_logic;
          addr     : IN     std_logic_vector (31 DOWNTO 0);
          dataIn   : IN     std_logic_vector (31 DOWNTO 0);
          dataOut  : OUT    std_logic_vector (31 DOWNTO 0)
       );
    end component;
    
    signal MemWrite : STD_LOGIC;
    signal addr : STD_LOGIC_VECTOR(31 downto 0);
    signal MemoryToCPU : STD_LOGIC_VECTOR(31 downto 0);
    signal CPUToMemory : STD_LOGIC_VECTOR(31 downto 0);
    
begin
    U_0: CPU PORT MAP(
        Clock => clock,
        Reset => reset,
        MemoryDataIn => MemoryToCPU,
        MemoryDataAddress => addr,
        MemoryDataOut => CPUToMemory,
        MemWrite => MemWrite
    );
   
    U_1: CPU_memory PORT MAP(
        Clk => clock,
        MemWrite => MemWrite,
        addr => addr,
        dataIn => CPUToMemory,
        dataOut => MemoryToCPU
    );

end sim;
