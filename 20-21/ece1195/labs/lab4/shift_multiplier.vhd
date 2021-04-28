library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_multiplier is
    Generic(
        Width : Positive := 32
    );
    Port(
        CLK          : in  STD_LOGIC;
        RST          : in  STD_LOGIC;
        shift        : in  STD_LOGIC;
        start        : in  STD_LOGIC;
        stop         : in  STD_LOGIC;
        multiplier   : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
        result      : out STD_LOGIC_VECTOR (WIDTH-1 downto 0)
    );
end shift_multiplier;

architecture arc of shift_multiplier is
    component reg_32
        PORT(
           D   : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           CLK : in  STD_LOGIC;
           EN  : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q   : out STD_LOGIC_VECTOR (WIDTH-1 downto 0)
        );
    end component;

signal D : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal shifted_D : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal Q : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
signal EN : STD_LOGIC;
   
begin
    sample_reg: reg_32 PORT MAP(D=>D, CLK=>CLK, EN=>EN, RST=>RST, Q=>Q);
    
    process(CLK, RST, start, stop, shift)
    begin
    
    EN <= (start or shift) and (not stop);
    shifted_D <= '0' & Q(31 downto 1);
    
    if (EN = '1') then
        if (shift = '0') then
            D <= multiplier;
        else
            D <= shifted_D;
        end if;
    end if;
    
    result <= Q;
    end process;
    
end arc;
