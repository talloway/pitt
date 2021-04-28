library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_multiplicand is
    Generic(
        Width : Positive := 64
    );
    Port(
        CLK          : in  STD_LOGIC;
        RST          : in  STD_LOGIC;
        shift        : in  STD_LOGIC;
        start        : in  STD_LOGIC;
        stop        : in  STD_LOGIC;
        multiplicand : in  STD_LOGIC_VECTOR (31 downto 0);
        result       : out STD_LOGIC_VECTOR (WIDTH-1 downto 0)
    );
end shift_multiplicand;

architecture arc of shift_multiplicand is
    component reg_64
    Port ( D   : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           CLK : in  STD_LOGIC;
           EN  : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q   : out STD_LOGIC_VECTOR (WIDTH-1 downto 0));
    end component;

signal EN                : STD_LOGIC;
signal D                 : STD_LOGIC_VECTOR (WIDTH-1 downto 0);
signal Q                 : STD_LOGIC_VECTOR (WIDTH-1 downto 0);
signal full_multiplicand : STD_LOGIC_VECTOR (WIDTH-1 downto 0);
signal shifted_Q         : STD_LOGIC_VECTOR (WIDTH-1 downto 0);

begin
    sample_reg: reg_64 PORT MAP(D=>D, CLK=>CLK, EN=>EN, RST=>RST, Q=>Q);
    
    process(CLK, RST, start, stop, shift)
    begin
        -- extend multiplicand to 64 bits and shift Q
        full_multiplicand <= X"00000000" & multiplicand(31 downto 0);
        shifted_Q <= Q(62 downto 0) & '0';
        
        EN <= (shift or start) and (not stop);
        
        if(EN = '1') then
            if(shift='0') then
                D <= full_multiplicand;
            else
                D <= shifted_Q;
            end if;    
         end if;
         
         result <= Q;      
    end process;

end arc;
