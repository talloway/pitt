LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY full_adder_tb IS
END full_adder_tb;

ARCHITECTURE Behavioral OF full_adder_tb IS
    COMPONENT full_adder IS 
        PORT (
		A       : in  STD_LOGIC;
		B       : in  STD_LOGIC;
		Cin     : in  STD_LOGIC;
		Sum     : out STD_LOGIC;
		Cout    : out STD_LOGIC
	);
	END COMPONENT;
	
	SIGNAL A    : STD_LOGIC;
	SIGNAL B    : STD_LOGIC;
	SIGNAL Cin  : STD_LOGIC;
	SIGNAL Sum  : STD_LOGIC;
	SIGNAL Cout : STD_LOGIC;

BEGIN
    DUT: full_adder
        PORT MAP(
            A   => A,
            B   => B,
            Cin => Cin,
            Sum => Sum,
            Cout => Cout 
        );
     PROCESS
        variable temp : std_logic_vector(2 downto 0);
     BEGIN
        for i in 0 to 7 loop
          temp := std_logic_vector(to_unsigned(i,3));
          A <= temp(2);
          B <= temp(1);
          Cin <= temp(0);
          
          wait for 10 ns;
          assert(Sum = (A xor B xor Cin)) report "Sum failed";
          assert(Cout = ((A and B) or (A and Cin) or (B and Cin))) report "Carry failed"; 
                
        end loop;  -- i
        report "Simulation finished.";
        wait;
     END PROCESS;

END Behavioral;
