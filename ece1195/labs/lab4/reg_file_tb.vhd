library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity reg_file_tb is
end reg_file_tb;

architecture sim of reg_file_tb is
    component reg_file is
        port(
        reg_write  : in STD_LOGIC;
        rst        : in STD_LOGIC;
        clk        : in STD_LOGIC;
        
        read_reg_1 : in STD_LOGIC_VECTOR (4 downto 0);
        read_reg_2 : in STD_LOGIC_VECTOR (4 downto 0);
        write_reg  : in STD_LOGIC_VECTOR (4 downto 0);
        
        write_data : in STD_LOGIC_VECTOR (31 downto 0);
        read_data_1 : out STD_LOGIC_VECTOR (31 downto 0);
        read_data_2 : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    signal clk : std_logic;
    signal reg_write : std_logic;
    signal rst : std_logic;
    
    signal read_reg_1 : std_logic_vector (4 downto 0);
    signal read_reg_2 : std_logic_vector (4 downto 0);
    signal write_reg : std_logic_vector (4 downto 0);
    
    signal write_data : std_logic_vector(31 downto 0);
    signal read_data_1 : std_logic_vector (31 downto 0);
    signal read_data_2 : std_logic_vector (31 downto 0);
begin
    rf: reg_file port map(
        clk => clk,
        rst => rst,
        reg_write => reg_write,
        read_reg_1 => read_reg_1,
        read_reg_2 => read_reg_2,
        write_reg => write_reg,
        write_data => write_data,
        read_data_1 => read_data_1,
        read_data_2 => read_data_2
    );
    
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
            write_reg <= "00001";
            write_data <= X"DEADBEEF";
            reg_write <= '1';
            wait for 10 ns;
            reg_write <= '0';
            write_data <= X"00000000";
            read_reg_1 <= "00001";
            assert (read_data_1 = X"DEADBEEF") report "Read failed.";
            wait for 10 ns;
            
        end process test;


end sim;
