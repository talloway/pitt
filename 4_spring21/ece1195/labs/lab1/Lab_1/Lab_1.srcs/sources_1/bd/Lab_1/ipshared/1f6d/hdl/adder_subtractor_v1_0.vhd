LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY adder_subtractor IS
    GENERIC (
           WIDTH: positive := 32
           );
    PORT ( A : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           B : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           k : in STD_LOGIC;
           result : out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           overflow : out STD_LOGIC
          );
END adder_subtractor;

ARCHITECTURE arc OF adder_subtractor IS

COMPONENT full_adder_0
    PORT( 
      A, B, Cin : in STD_LOGIC;
      Sum, Cout : out STD_LOGIC
     );
END COMPONENT;

SIGNAL mirror_B: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
SIGNAL temp_c_out: STD_LOGIC_VECTOR(WIDTH downto 0);
SIGNAL add_one: STD_LOGIC_VECTOR(WIDTH-1 downto 0) := "00000000000000000000000000000001";
SIGNAL temp_c_out_add_one: STD_LOGIC_VECTOR(WIDTH downto 0);
SIGNAL final_inverted_B: STD_LOGIC_VECTOR(WIDTH-1 downto 0);
SIGNAL final_B: STD_LOGIC_VECTOR(WIDTH-1 downto 0);

BEGIN
    temp_c_out(0) <= '0';
    temp_c_out_add_one(0) <= '0';
    
    L1: FOR i in 0 TO (WIDTH - 1) GENERATE
        mirror_B(i) <= NOT B(i);
    END GENERATE;
    
    L2: FOR i in 0 TO (WIDTH - 1) GENERATE
        adders: full_adder_0 PORT MAP(
            mirror_B(i), add_one(i), temp_c_out_add_one(i), final_inverted_B(i), temp_c_out_add_one(i+1));
    END GENERATE;
    
    
    final_B <= final_inverted_B when k = '1' else B;
    -- Perform operation
    L3: FOR i in 0 TO (WIDTH - 1) GENERATE
        adders: full_adder_0 PORT MAP (
            A(i), final_B(i), temp_c_out(i), result(i), temp_c_out(i+1));
    END GENERATE;
    
    
    
     -- Set overflow to the last value stored in temp_c_in
     overflow <= temp_c_out(WIDTH);
END arc;
