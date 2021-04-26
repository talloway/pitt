library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity rand_gen is
end rand_gen;

architecture Behavioral of rand_gen is
signal rand_num : std_logic_vector(31 downto 0);
begin

process
    variable seed1, seed2: positive;               -- seed values for random generator
    variable rand: real;   -- random real-number value in range 0 to 1.0  
    variable range_of_rand : real := real(2**31-1);    -- the range of random values created will be 0 to 2^31-1.
begin
    for i in 0 to 15 loop
        uniform(seed1, seed2, rand);   -- generate random number
        rand_num <= std_logic_vector(to_unsigned(integer(rand*range_of_rand), 32));  -- rescale to 0..2^31-1, convert integer part 
        wait for 10 ns;
    end loop;
    wait;
end process;

end Behavioral;