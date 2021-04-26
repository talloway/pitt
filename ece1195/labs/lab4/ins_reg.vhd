library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ins_reg is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           IRWrite : in STD_LOGIC;
           ins : in STD_LOGIC_VECTOR (31 downto 0);
           ins_out : out STD_LOGIC_VECTOR (31 downto 0));
end ins_reg;

architecture Behavioral of ins_reg is
    component reg is
        Generic(
            Width : Positive := 32
        );
        Port ( D   : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
               CLK : in  STD_LOGIC;
               EN  : in  STD_LOGIC;
               RST : in  STD_LOGIC;
               Q   : out STD_LOGIC_VECTOR (WIDTH-1 downto 0));
    end component;

begin

    r: reg GENERIC MAP(Width => 32) PORT MAP(CLK => clk, EN => IRWrite, RST => rst, D => ins, Q => ins_out);
    
end Behavioral;
