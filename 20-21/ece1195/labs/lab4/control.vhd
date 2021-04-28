LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity control is
    PORT(
        multiplier         : in  STD_LOGIC_VECTOR (31 downto 0);
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
--        if (RST = '1') then 
--            count := 0;
--            state <= S0;
        
        if(CLK'event and CLK='1') then
            case state is
                when S0 =>
                    if (RST = '1') then
                        count := 0;
                        state <= S0;
                    else 
                        state <= S1;
                    end if;
                when S1 =>
                    state <= S2;
                when S2 =>
                    if (multiplier(0) = '0') then
                        state <= S4;
                    else
                        state <= S3;
                    end if;
                when S3 =>
                    state <= S4;
                when S4 =>
                    if (count = 31) then
                        state <= S0;
                    else
                        count := count + 1;
                        state <= S2;
                    end if;
            end case;
        end if;
        
--        elsif(CLK'event and CLK='1') then
--            case state is
--                when S0 =>
--                    state <= s1;
--                when S1 =>
--                    state <= S2;
--                when S2 =>
--                    if(multiplier(0) = '0') then
--                        state <= s4;
--                    else
--                        state <= s3;
--                    end if;
--                when S3 =>
--                    state <= S4;
--                when S4 =>
--                    if (count >= 31) then
--                        state <= s5;
--                    else
--                        count := count + 1;
--                        state <= s2;
--                    end if;
--                when S5 =>
--                    state <= S0;
--            end case;
--         end if;           
    end process;
    
    process(state)
    begin
    
    case state is 
            -- done/reset
            when S0 =>
                end_p <= '1';
                load <= '0';
                write <= '0';
                shift <= '0';
                
            -- load initial values
            when S1 =>
                end_p <= '0';
                load <= '1';
                write <= '0';
                shift <= '0';
            
            -- wait
            when S2 =>
                end_p <= '0';
                load <= '0';
                write <= '0';
                shift <= '0';
                
            -- write to prod    
            when S3 =>
                end_p <= '0';
                load <= '0';
                write <= '1';
                shift <= '0';
                
            -- shift values    
            when S4 =>
                end_p <= '0';
                load <= '0';
                write <= '0';
                shift <= '1';
              
        end case;
--        case state is 
--            when S0 =>
--                end_p <= '0';
--                load <= '0';
--                write <= '0';
--                shift <= '0';
                
--            when S1 =>
--                end_p <= '0';
--                load <= '1';
--                write <= '0';
--                shift <= '0';
                
--            when S2 =>
--                end_p <= '0';
--                load <= '0';
--                write <= '0';
--                shift <= '0';
                
--            when S3 =>
--                end_p <= '0';
--                load <= '0';
--                write <= '1';
--                shift <= '0';
                
--            when S4 =>
--                end_p <= '0';
--                load <= '0';
--                write <= '0';
--                shift <= '1';
                
--            when S5 =>
--                end_p <= '1';
--                load <= '0';
--                write <= '0';
--                shift <= '0';
--        end case;
        
    end process;

end arc;