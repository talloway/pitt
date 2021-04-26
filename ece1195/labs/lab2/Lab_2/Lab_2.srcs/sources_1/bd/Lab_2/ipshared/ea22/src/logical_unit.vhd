library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logical_unit is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Op : in STD_LOGIC_VECTOR (1 downto 0);
           R : out STD_LOGIC_VECTOR (31 downto 0));
end logical_unit;

architecture arc of logical_unit is

begin
    R <= A AND B when Op = "00" else
         A OR  B when Op = "01" else
         A XOR B when Op = "10" else
         A NOR B when Op = "11";
 
end arc;
