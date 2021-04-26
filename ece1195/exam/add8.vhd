LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY add8 IS
   PORT( 
      CI        : IN	std_logic;
	  A       	: IN	std_logic_vector (7 DOWNTO 0);
	  B       	: IN	std_logic_vector (7 DOWNTO 0);
      CO   		: out	std_logic;
      S  		: out	std_logic_vector (7 DOWNTO 0)
   );

END add8 ;

ARCHITECTURE struct OF add8 IS
	
	signal temp : std_logic_vector(8 DOWNTO 0);	
begin
	temp <= ('0' & A) + ('0' & B) + ("00000000" & CI);
	S <= temp (7 DOWNTO 0);
	CO <= temp (8);

END struct;