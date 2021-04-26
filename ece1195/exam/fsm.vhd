library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm is
    Port (
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        DataIn : in STD_LOGIC_VECTOR(7 downto 0);
        Checksum : in STD_LOGIC_VECTOR (7 downto 0);
        LengthIsZero : in STD_LOGIC;
        Counter_load : out STD_LOGIC;
        Length_init : out STD_LOGIC_VECTOR (7 downto 0);
        ChecksumError : out STD_LOGIC;
        DataValid : out STD_LOGIC
    );
end fsm;

architecture Behavioral of fsm is
    type state is (S0, S1, S2, S3, S4);
    signal pr_state, nx_state : state;
begin
    -- FSM register
    process(reset, clock)
    begin
        if (reset = '1') then
            pr_state <= S0;
        elsif (clock'event and clock='1') then
            pr_state <= nx_state;
        end if;
    end process;
    
    -- Next state function
    process(DataIn, pr_state)
    variable length : STD_LOGIC_VECTOR(7 downto 0);
    begin
        case pr_state is
            when S0 =>
                if (DataIn = X"99") then
                    nx_state <= S1;
                else
                    nx_state <= S0;
                end if;
                
            when S1 =>
                if (DataIn = X"66") then
                    nx_state <= S2;
                else
                    nx_state <= S0;
                end if;
                
            when S2 =>
                Length_init <= DataIn;
                nx_state <= S3;
                
            -- Read in payload data
            when S3 =>
                if (LengthIsZero = '1') then
                    nx_state <= S4;
                else
                    nx_state <= S3;
                end if;
                 
            -- Do checksum
            when S4 =>
                nx_state <= S0;
        end case;
    end process;
    
    -- Output function
    process(pr_state)
    begin
        case pr_state is
            when S0 =>
                ChecksumError <= '0';
                DataValid <= '0';
                Counter_load <= '0';
            
            when S1 =>
            
            when S2 =>
                Counter_load <= '1';
                
            when S3 =>
                DataValid <= '1'; -- Will control counter and register EN signals
                Counter_load <= '0';
            
            when S4 =>
                if (CheckSum = DataIn) then
                    ChecksumError <= '0';
                else
                    ChecksumError <= '1';
                end if;
                
                DataValid <= '0';
                
        end case;
    end process;

end Behavioral;
