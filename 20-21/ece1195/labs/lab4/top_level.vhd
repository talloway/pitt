library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level is
    Port ( A    : in  STD_LOGIC_VECTOR (31 downto 0);
           B    : in  STD_LOGIC_VECTOR (31 downto 0);
           clk  : in  STD_LOGIC;
           rst  : in  STD_LOGIC;
           p_high    : out STD_LOGIC_VECTOR (31 downto 0);
           p_low  : out STD_LOGIC_VECTOR (31 downto 0);
           done : out STD_LOGIC);
end top_level;

architecture arc of top_level is
signal start : STD_LOGIC := '1';
signal temp : STD_LOGIC_VECTOR (63 downto 0);
signal done_p : STD_LOGIC;

    component mult
    Port(
        multiplier   : in  STD_LOGIC_VECTOR (31 downto 0);
        multiplicand : in  STD_LOGIC_VECTOR (31 downto 0);
        RST          : in  STD_LOGIC;
        CLK          : in  STD_LOGIC;
        start        : in  STD_LOGIC;
        done         : out STD_LOGIC;
        product      : out STD_LOGIC_VECTOR (63 downto 0));
    end component;
    
begin

    mul: mult PORT MAP(
        multiplier => A,
        multiplicand => B,
        CLK => clk,
        RST => rst,
        start => start,
        done => done_p,
        product => temp
    );
    
    p_high <= temp(63 downto 32);
    p_low <= temp(31 downto 0);
    done <= done_p;

end arc;
