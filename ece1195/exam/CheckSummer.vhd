library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CheckSummer is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR (7 downto 0);
           ChecksumError : out STD_LOGIC;
           DataValid : out STD_LOGIC);
end CheckSummer;

architecture arc of CheckSummer is

    component datapath 
        PORT(
            clock : in STD_LOGIC;
            reset : in STD_LOGIC;
            DataIn : in STD_LOGIC_VECTOR(7 downto 0);
            ChecksumError : out STD_LOGIC;
            DataValid : out STD_LOGIC
        );
    end component;

begin
    
    dp : datapath PORT MAP(
        clock => clock,
        reset => reset,
        DataIn => DataIn,
        ChecksumError => ChecksumError,
        DataValid => DataValid
    );

end arc;
