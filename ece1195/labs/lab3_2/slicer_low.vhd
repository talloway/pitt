library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity slicer_low is
    Port ( A : in STD_LOGIC_VECTOR (63 downto 0);
           B : out STD_LOGIC_VECTOR (31 downto 0));
end slicer_low;

architecture arc of slicer_low is

begin
    B <= A(31 downto 0);
    
end arc;
