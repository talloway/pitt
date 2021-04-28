library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg_1 is
    Port ( CLK : in STD_LOGIC;
           D : in STD_LOGIC;
           EN : in STD_LOGIC;
           RST : in STD_LOGIC;
           Q : out STD_LOGIC);
end reg_1;

architecture flipflop of reg_1 is

begin
    CLKD: process(CLK, D, EN, RST)
    begin
        if(RST = '1') then
            Q <= '0';
        elsif(CLK'event AND CLK = '1') then
            if(EN = '1') then
                Q <= D;
            end if;
        end if;
    end process CLKD;
end flipflop;
