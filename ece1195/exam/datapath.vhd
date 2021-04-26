library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath is
    Port(
        clock : in STD_LOGIC;
        reset : in STD_LOGIC;
        DataIn : in STD_LOGIC_VECTOR(7 downto 0);
        ChecksumError : out STD_LOGIC;
        DataValid : out STD_LOGIC
    );
end datapath;

architecture arc of datapath is
    component add8
        Port(
            CI        : IN	std_logic;
	        A       	: IN	std_logic_vector (7 DOWNTO 0);
	        B       	: IN	std_logic_vector (7 DOWNTO 0);
            CO   		: out	std_logic;
            S  		: out	std_logic_vector (7 DOWNTO 0));
    end component;

    component counter
        Port (D      : IN     std_logic_vector (7 DOWNTO 0);
              clk    : IN     std_logic;
              en     : IN     std_logic;
              load   : IN     std_logic;
              rst    : IN     std_logic;
              updown : IN     std_logic;
              Q      : OUT    std_logic_vector (7 DOWNTO 0);
              Zero   : OUT    std_logic);
    end component;
    
    component reg8
        Port (CLK : IN     std_logic;
              D   : IN     std_logic_vector (7 DOWNTO 0);
              EN  : IN     std_logic;
              RST : IN     std_logic;
              Q   : OUT    std_logic_vector (7 DOWNTO 0));
    end component;
    
    component fsm
        Port (clock : in STD_LOGIC;
                reset : in STD_LOGIC;
                DataIn : in STD_LOGIC_VECTOR(7 downto 0);
                Checksum : in STD_LOGIC_VECTOR (7 downto 0);
                LengthIsZero : in STD_LOGIC;
                Counter_load : out STD_LOGIC;
                Length_init : out STD_LOGIC_VECTOR (7 downto 0);
                ChecksumError : out STD_LOGIC;
                DataValid : out STD_LOGIC);
    end component;
    
    signal temp_C : STD_LOGIC;
    signal reg_Q : STD_LOGIC_VECTOR(7 downto 0);
    signal reg_D : STD_LOGIC_VECTOR(7 downto 0);
    signal Length_init : STD_LOGIC_VECTOR (7 downto 0);
    signal Length_count : STD_LOGIC_VECTOR (7 downto 0);
    signal DataValid_en : STD_LOGIC;
    signal Zero_out : STD_LOGIC;
    signal Counter_load_out :STD_LOGIC;
    signal Counter_en : STD_LOGIC;
        
begin
   
    adder: add8 PORT MAP(
        CI => temp_C,
        A => DataIn,
        B => reg_Q,
        CO => temp_C,
        S => reg_D
    );
    
    count: counter PORT MAP(
        D => DataIn,
        CLK => clock,
        EN => Counter_en,
        load => Counter_load_out,
        rst => reset,
        updown => '0',
        Q => Length_count,
        Zero => Zero_out
    );
    
    reg: reg8 PORT MAP(
        CLK => clock,
        D => reg_D,
        EN => DataValid_en,
        RST => reset,
        Q => reg_Q
    );
    
    control: fsm PORT MAP(
        clock => clock,
        reset => reset,
        DataIn => DataIn,
        Checksum => reg_Q,
        LengthIsZero => Zero_out,
        Length_init => Length_init,
        ChecksumError => ChecksumError,
        DataValid => DataValid_en,
        Counter_load => Counter_load_out
    );
    
    DataValid <= DataValid_en;
    Counter_en <= DataValid_en or Counter_load_out;
   
end arc;