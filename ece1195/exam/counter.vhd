--
-- VHDL Architecture examlib.counter.counter
--
-- Created:
--          by - jbakos.UNKNOWN (TWEETY)
--          at - 16:15:48 12/09/2003
--
-- using Mentor Graphics HDL Designer(TM) 2003.1 (Build 399)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY counter IS
   PORT( 
      D      : IN     std_logic_vector (7 DOWNTO 0);
      clk    : IN     std_logic;
      en     : IN     std_logic;
      load   : IN     std_logic;
      rst    : IN     std_logic;
      updown : IN     std_logic;
      Q      : OUT    std_logic_vector (7 DOWNTO 0);
      Zero   : OUT    std_logic
   );

-- Declarations



END counter ;

--
ARCHITECTURE struct OF counter IS

   signal qbar:std_logic_vector (7 DOWNTO 0);
   begin
   
   
CLKD : process (CLK, RST)
    variable curr_val : std_logic_vector (7 downto 0);
  begin
    if (rst='1') then curr_val:="00000000";
    elsif (clk'event and clk='1' and en='1') then
      if (load='1') then curr_val:=D;
      elsif (updown='0') then curr_val:=curr_val-"00000001";
      else curr_val:=curr_val+"00000001";
      end if;
    end if;
    Q <= curr_val;
    qbar <= not curr_val;
  end process CLKD;
  Zero <= qbar(0) and qbar(1) and qbar(2) and qbar(3) and qbar(4) and qbar(5) and qbar(6) and qbar(7);
END struct;
