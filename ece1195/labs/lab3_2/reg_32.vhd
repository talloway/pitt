library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity reg_32 is
    Generic(
        Width : Positive := 32
    );
    Port ( D   : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           CLK : in  STD_LOGIC;
           EN  : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q   : out STD_LOGIC_VECTOR (WIDTH-1 downto 0));
end reg_32;

architecture arc of reg_32 is
    component reg_1
        Port(
            CLK  : in  STD_LOGIC;
            D    : in  STD_LOGIC;
            EN   : in  STD_LOGIC;
            RST  : in  STD_LOGIC;
            Q    : out STD_LOGIC
        );
    end component;
begin
    L1: for i in 0 to (WIDTH-1) generate
        regs_1: reg_1 PORT MAP(CLK, D(i), EN, RST, Q(i));
    end generate;

end arc;
