--
-- VHDL Architecture COElib.reg32.reg32
--
-- Created:
--          by - jbakos.UNKNOWN (TWEETY)
--          at - 11:26:27 09/05/2003
--
-- using Mentor Graphics HDL Designer(TM) 2003.1 (Build 399)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY reg8 IS
   PORT( 
      CLK : IN     std_logic;
      D   : IN     std_logic_vector (7 DOWNTO 0);
      EN  : IN     std_logic;
      RST : IN     std_logic;
      Q   : OUT    std_logic_vector (7 DOWNTO 0)
   );

END reg8 ;

--
ARCHITECTURE struct OF reg8 IS
BEGIN
     CLKD : process(D, CLK, EN, RST)
     begin
        if(RST = '1') then
           Q <= "00000000";
        elsif(CLK'event AND CLK = '1') then
           if(EN = '1') then
              Q <= D;
           end if;
        end if;
     end process CLKD;
END struct;
