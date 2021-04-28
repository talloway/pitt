LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

ENTITY adder IS
	PORT (
		A       : in  STD_LOGIC;
		B       : in  STD_LOGIC;
		Cin     : in  STD_LOGIC;
		Sum     : out STD_LOGIC;
		Cout    : out STD_LOGIC
	);
END ENTITY;

ARCHITECTURE one OF adder IS
BEGIN
    Sum <= A XOR B XOR Cin;
    Cout <= (A AND B) OR (B AND Cin) OR (A AND Cin);
END ARCHITECTURE;
