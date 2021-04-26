library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( 
        A        : in    STD_LOGIC_VECTOR (31 downto 0);
        B        : in    STD_LOGIC_VECTOR (31 downto 0);
        SHAMT    : in    STD_LOGIC_VECTOR (4 downto 0);
        ALUOp    : in    STD_LOGIC_VECTOR (3 downto 0);
        R        : out   STD_LOGIC_VECTOR (31 downto 0);
        Overflow : out   STD_LOGIC;
        Zero     : out   STD_LOGIC
    );
end ALU;

architecture arc of ALU is

component arith_unit
    generic (
      n       : positive := 32);
    port( 
        A       : IN     std_logic_vector (n-1 DOWNTO 0);
        B       : IN     std_logic_vector (n-1 DOWNTO 0);
        C_op    : IN     std_logic_vector (1 DOWNTO 0);
        CO      : OUT    std_logic;
        OFL     : OUT    std_logic;
        S       : OUT    std_logic_vector (n-1 DOWNTO 0);
        Z       : OUT    std_logic
    );
end component;

component comparator_unit
    port( 
        A_31    : in     STD_LOGIC;
        B_31    : in     STD_LOGIC;
        S_31    : in     STD_LOGIC;
        CO      : in     STD_LOGIC;
        ALUOp   : in     STD_LOGIC_VECTOR (1 downto 0);
        R       : out    STD_LOGIC_VECTOR (31 downto 0)
    );
end component;

component logical_unit
    port(  
        A       : in     STD_LOGIC_VECTOR (31 downto 0);
        B       : in     STD_LOGIC_VECTOR (31 downto 0);
        Op      : in     STD_LOGIC_VECTOR (1 downto 0);
        R       : out    STD_LOGIC_VECTOR (31 downto 0)
    );
end component;

component shift_unit
    port(
        A       : in     STD_LOGIC_VECTOR  (31 downto 0);
        SHAMT   : in     STD_LOGIC_VECTOR  (4 downto 0);
        ALUOp   : in     STD_LOGIC_VECTOR  (1 downto 0);
        R       : out    STD_LOGIC_VECTOR (31 downto 0)
    );
end component;

signal LogicalR  : STD_LOGIC_VECTOR (31 downto 0);
signal ArithR    : STD_LOGIC_VECTOR (31 downto 0);
signal CompR     : STD_LOGIC_VECTOR (31 downto 0);
signal ShiftR    : STD_LOGIC_VECTOR (31 downto 0);
signal UnitOp    : STD_LOGIC_VECTOR (1 downto 0);
signal ALUSelect : STD_LOGIC_VECTOR (1 downto 0);
signal test_CO   : STD_LOGIC;

begin
    
    UnitOp    <= ALUOp (1 downto 0);
    ALUSelect <= ALUOp (3 downto 2);
    
    ALU_Logical: logical_unit port map (
        A, B, UnitOp, LogicalR);
        
    ALU_Arith: arith_unit port map (
        A, B, UnitOp, test_CO, Overflow, ArithR, Zero);
        
    ALU_Comp: comparator_unit port map (
        A(31), B(31), ArithR(31), test_CO, UnitOp, CompR);
        
    ALU_Shift: shift_unit port map (
        A, SHAMT, UnitOp, ShiftR);
        
    R <= LogicalR when ALUSelect = "00" else
         ArithR   when ALUSelect = "01" else
         CompR    when ALUSelect = "10" else
         ShiftR   when ALUSelect = "11";   
end arc;
