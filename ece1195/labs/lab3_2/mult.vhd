library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult is
    Port ( multiplier   : in  STD_LOGIC_VECTOR (31 downto 0);
           multiplicand : in  STD_LOGIC_VECTOR (31 downto 0);
           RST          : in  STD_LOGIC;
           CLK          : in  STD_LOGIC;
           start        : in  STD_LOGIC;
           done         : out STD_LOGIC;
           product      : out STD_LOGIC_VECTOR (63 downto 0));
end mult;

architecture arc of mult is
    signal write          : STD_LOGIC := '0';
    signal stop           : STD_LOGIC := '1';
    signal load           : STD_LOGIC := '0';
    signal shift          : STD_LOGIC := '0';
    signal temp_cout      : STD_LOGIC;
    signal multiplier_d   : STD_LOGIC_VECTOR (31 downto 0) := X"00000000";
    signal sum            : STD_LOGIC_VECTOR (63 downto 0);
    signal prod           : STD_LOGIC_VECTOR (63 downto 0) := X"0000000000000000";
    signal multiplicand_d : STD_LOGIC_VECTOR (63 downto 0) := X"0000000000000000";
    
    component reg_64
    Port ( D   : in  STD_LOGIC_VECTOR (63 downto 0);
           CLK : in  STD_LOGIC;
           EN  : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q   : out STD_LOGIC_VECTOR (63 downto 0));
    end component;
    
    component shift_multiplicand
        Port(
            CLK          : in  STD_LOGIC;
            RST          : in  STD_LOGIC;
            shift        : in  STD_LOGIC;
            start        : in  STD_LOGIC;
            stop         : in  STD_LOGIC;
            multiplicand : in  STD_LOGIC_VECTOR (31 downto 0);
            result       : out STD_LOGIC_VECTOR (63 downto 0)
        );
    end component;
    
    component shift_multiplier
        Port(
            CLK          : in  STD_LOGIC;
            RST          : in  STD_LOGIC;
            shift        : in  STD_LOGIC;
            start        : in  STD_LOGIC;
            stop         : in  STD_LOGIC;
            multiplier   : in  STD_LOGIC_VECTOR (31 downto 0);
            result       : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;
    
    component adder_64
        PORT ( A        : in  STD_LOGIC_VECTOR (63 downto 0);
               B        : in  STD_LOGIC_VECTOR (63 downto 0);
               result   : out STD_LOGIC_VECTOR (63 downto 0);
               overflow : out STD_LOGIC
              );
    end component;
    
    component control
        PORT(
        multiplier : in  STD_LOGIC_VECTOR (31 downto 0);
        CLK        : in  STD_LOGIC;
        RST        : in  STD_LOGIC;
        write      : out STD_LOGIC;
        load       : out STD_LOGIC;
        shift      : out STD_LOGIC;
        end_p      : out STD_LOGIC
        );
    end component;
    
begin
    -- Product register
    reg: reg_64 PORT MAP(
        D => sum, 
        CLK=>CLK, 
        EN=>write, 
        RST=>RST, 
        Q=>prod
    );
    
    -- Adder for product and multiplicand
    adder : adder_64 PORT MAP(
        A => prod,
        B => multiplicand_d, 
        result => sum, 
        overflow => temp_cout
    );
    
    -- Register for multiplicand
    multiplicand_reg : shift_multiplicand PORT MAP(
        multiplicand => multiplicand, 
        CLK => CLK, 
        RST => RST,  
        start => load,
        stop => stop,
        shift => shift, 
        result => multiplicand_d
    );
    
    -- Shift register for multiplier
    multiplier_reg : shift_multiplier PORT MAP(
        multiplier => multiplier, 
        CLK => CLK, 
        RST => RST, 
        start => load,
        stop => stop, 
        shift => shift, 
        result => multiplier_d
    );
    
    -- Control unit
    c : control PORT MAP(
        multiplier => multiplier_d, 
        CLK => CLK, 
        write => write, 
        shift => shift, 
        RST => RST, 
        load => load,
        end_p => stop
    );

    product <= prod;
    done <= stop;
end arc;
