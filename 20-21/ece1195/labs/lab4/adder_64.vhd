LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY adder_64 IS
    GENERIC (
           WIDTH: positive := 64
           );
    PORT ( A        : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           B        : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           result   : out STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           overflow : out STD_LOGIC
          );
END adder_64;

ARCHITECTURE arc OF adder_64 IS

COMPONENT adder
    PORT( 
      A, B, Cin : in STD_LOGIC;
      Sum, Cout : out STD_LOGIC
     );
END COMPONENT;

SIGNAL temp_c_out: STD_LOGIC_VECTOR(WIDTH downto 0);

BEGIN
    temp_c_out(0) <= '0';

    L1: for i in 0 to (WIDTH - 1) generate
        adders: adder port map (
            A(i), B(i), temp_c_out(i), result(i), temp_c_out(i+1));
    end generate;
    
     overflow <= temp_c_out(WIDTH);
END arc;
