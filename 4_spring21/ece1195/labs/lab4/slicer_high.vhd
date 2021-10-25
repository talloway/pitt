library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity slicer_high is
    Port ( A : in STD_LOGIC_VECTOR (63 downto 0);
           B : out STD_LOGIC_VECTOR (31 downto 0));
end slicer_high;

architecture arc of slicer_high is

begin

    B <= A(63 downto 32);

end arc;
