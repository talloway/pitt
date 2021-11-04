library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity reg_file is
    generic(
        width: positive := 32
    );
    port(
        reg_write  : in STD_LOGIC;
        rst        : in STD_LOGIC;
        clk        : in STD_LOGIC;
        
        read_reg_1 : in STD_LOGIC_VECTOR (4 downto 0);
        read_reg_2 : in STD_LOGIC_VECTOR (4 downto 0);
        write_reg  : in STD_LOGIC_VECTOR (4 downto 0);
        
        write_data : in STD_LOGIC_VECTOR (width-1 downto 0);
        read_data_1 : out STD_LOGIC_VECTOR (width-1 downto 0);
        read_data_2 : out STD_LOGIC_VECTOR (width-1 downto 0) 
    );
end reg_file;

architecture arc of reg_file is
    type registerFile is array(0 to 31) of std_logic_vector(31 downto 0);
    signal registers : registerFile;
        
begin
    
    reg : process(clk, rst) is
    begin
        if (rst = '1') then
            for i in 0 to (width-1) loop
                registers(i) <= X"00000000";
            end loop;
                
        end if;
        
        if (rising_edge(clk)) then
            read_data_1 <= registers(to_integer(unsigned(read_reg_1)));
            read_data_2 <= registers(to_integer(unsigned(read_reg_2)));
            
            if reg_write = '1' then
                registers(to_integer(unsigned(write_reg))) <= write_data;
            end if;
            
            if read_reg_1 = write_reg then
                read_data_1 <= write_data;
            end if;
            
            if read_reg_2 = write_reg then
                read_data_2 <= write_data;
            end if;
        end if;
    end process;
end arc;
