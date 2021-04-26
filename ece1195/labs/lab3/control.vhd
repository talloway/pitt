LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity control is
    PORT(
        multiplier         : in  STD_LOGIC_VECTOR (31 downto 0);
        begin_p            : in  STD_LOGIC;
        CLK                : in  STD_LOGIC;
        RST                : in  STD_LOGIC; 
        write              : out STD_LOGIC;
        shift              : out STD_LOGIC;
        load               : out STD_LOGIC;
        end_p              : out STD_LOGIC
    );
end control;

architecture arc of control is
    type state_type is (S0, S1, S2, S3, S4);
    signal state : state_type;
    
begin
    process(CLK, RST)
    variable count : integer;
    begin
        if (RST = '1') then 
            state <= S0;
            count := 0;
        
        elsif(CLK'event and CLK='1') then
            case state is
                when S0 =>
                    if(multiplier(0) = '0') then
                        state <= S3;
                    else
                        state <= S2;
                    end if;
       
                when S1 =>
                    state <= S0;
                    
                when S2 =>
                    state <= S3;
                    
                when S3 =>
                    if (count >= 31) then
                        state <= S4;
                    else
                        count := count + 1;
                        state <= S0;
                    end if;
                    
                when S4 =>
                    state <= S0;
            end case;
         end if;           
    end process;
    
    process(state)
    begin
        case state is 
            when S0 =>
                end_p <= '0';
                load <= '0';
                write <= '0';
                shift <= '0';
                
            when S1 =>
                end_p <= '0';
                load <= '1';
                write <= '0';
                shift <= '0';
                
            when S2 =>
                end_p <= '0';
                load <= '0';
                write <= '1';
                shift <= '0';
                
            when S3 =>
                end_p <= '0';
                load <= '0';
                write <= '0';
                shift <= '1';
                
            when S4 =>
                end_p <= '1';
                load <= '0';
                write <= '0';
                shift <= '0';
        end case;
        
    end process;

end arc;