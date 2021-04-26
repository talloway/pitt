LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;
USE IEEE.MATH_REAL.all;

ENTITY adder_64_tb IS
END adder_64_tb;

ARCHITECTURE sim OF adder_64_tb IS
    COMPONENT adder_64 IS
        GENERIC (
           WIDTH: positive:=64
           );
        PORT ( A : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               B : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               result : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               overflow : out STD_LOGIC
              );
    END COMPONENT;
    
    CONSTANT WIDTH : positive := 64;
    SIGNAL A : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    SIGNAL B : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    SIGNAL result : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    SIGNAL overflow : STD_LOGIC;
    
BEGIN    
    DUT: adder_64
        GENERIC MAP (
            WIDTH => WIDTH    
        )
        PORT MAP (
            A => A,
            B => B,
            result => result,
            overflow => overflow
        );
        
    PROCESS
    BEGIN
        for i in 0 to 15 loop
            for j in 0 to 15 loop
                A <= std_logic_vector(to_unsigned(integer(i), WIDTH));
            
                B <= std_logic_vector(to_unsigned(integer(j), WIDTH));
            
                wait for 10 ns;
                assert (result = std_logic_vector(to_unsigned(i + j, WIDTH))) report "Add failed.";
                wait for 10 ns;  
            end loop;
        end loop;
       
        report "Simulation finished.";
        wait;
    END PROCESS;
END sim;