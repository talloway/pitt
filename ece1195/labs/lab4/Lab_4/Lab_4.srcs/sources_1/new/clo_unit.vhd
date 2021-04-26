library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clo_unit is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           num : out STD_LOGIC_VECTOR (31 downto 0));
end clo_unit;

architecture arc of clo_unit is

signal count : integer;


begin
 
process(A)
begin
    count <= 0;
    L1: for i in 0 to 31 loop
        if A(31) = '0' then
            exit;
        else
            count <= count + 1;
        end if;
    end loop L1;
end process A;
    
 num <= std_logic_vector(to_unsigned(count, num'length));

end arc;
