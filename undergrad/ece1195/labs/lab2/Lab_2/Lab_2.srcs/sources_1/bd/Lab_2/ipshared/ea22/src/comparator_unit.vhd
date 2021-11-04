library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator_unit is
    Port (A_31  : in STD_LOGIC;
          B_31  : in STD_LOGIC;
          S_31  : in STD_LOGIC;
          CO    : in STD_LOGIC;
          ALUOp : in STD_LOGIC_VECTOR(1 downto 0);
          R     : out STD_LOGIC_VECTOR(31 downto 0)); 
end comparator_unit;

architecture arc of comparator_unit is

begin
    R <= X"00000001" when (ALUOp = "10" AND ((B_31 = '0' AND S_31 = '1') OR 
                                             (A_31 = '1' AND B_31 = '0') OR 
                                             (A_31 = '1' AND S_31 = '1'))) OR
                          (ALUOp = "11" AND CO = '0') else X"00000000";

end arc;