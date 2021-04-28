LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;
USE IEEE.MATH_REAL.all;

ENTITY adder_subtractor_tb IS
END adder_subtractor_tb;

ARCHITECTURE sim OF adder_subtractor_tb IS
    COMPONENT adder_subtractor IS
        GENERIC (
           WIDTH: positive:=32
           );
        PORT ( A : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               B : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               k : in STD_LOGIC;
               result : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               overflow : out STD_LOGIC
              );
    END COMPONENT;
    
    CONSTANT WIDTH : positive := 32;
    SIGNAL A : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    SIGNAL B : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    SIGNAL k : STD_LOGIC;
    SIGNAL result : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    SIGNAL overflow : STD_LOGIC;
    
BEGIN    
    DUT: adder_subtractor
        GENERIC MAP (
            WIDTH => WIDTH    
        )
        PORT MAP (
            A => A,
            B => B,
            k => k,
            result => result,
            overflow => overflow
        );
        
    PROCESS
        variable seed1, seed2 : positive;
        variable rand : real;
        variable range_of_rand : real := real(2**31 - 1);
    BEGIN
        for i in 0 to 15 loop
            uniform(seed1, seed2, rand);
            A <= std_logic_vector(to_unsigned(integer(rand*range_of_rand), 32));
            
            uniform(seed2, seed1, rand);
            B <= std_logic_vector(to_unsigned(integer(rand*range_of_rand), 32));
            
            k <= '0';
            wait for 10 ns;
            k <= '1';
            wait for 10 ns; 
   
        end loop;
        
        -- addition overflow
        A <= std_logic_vector(to_unsigned(integer(2**31 - 2), WIDTH));
        B <= std_logic_vector(to_unsigned(integer(2**31 - 2), WIDTH));
        k <= '0';
        wait for 10 ns;
        
        -- subtracting to zero
        A <= std_logic_vector(to_unsigned(integer(2**31 - 2), WIDTH));
        B <= std_logic_vector(to_unsigned(integer(2**31 - 2), WIDTH));
        k <= '1';
        wait for 10 ns;
        
        -- subtracting to negative number
        A <= std_logic_vector(to_unsigned(integer(2**30 - 2), WIDTH));
        B <= std_logic_vector(to_unsigned(integer(2**31 - 2), WIDTH));
        k <= '1';
        wait for 10 ns;
        report "Simulation finished.";
        wait;
    END PROCESS;
END sim;