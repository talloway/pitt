library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CPU is
    Port ( Clock : in STD_LOGIC;
           Reset : in STD_LOGIC;
           
           MemoryDataIn : in STD_LOGIC_VECTOR (31 downto 0);
           
           MemoryDataAddress : out STD_LOGIC_VECTOR (31 downto 0); 
           MemoryDataOut : out STD_LOGIC_VECTOR (31 downto 0);
           MemWrite : out STD_LOGIC
           );
end CPU;

architecture Behavioral of CPU is
    component reg
        Generic(
            Width : Positive := 32
        );
        Port ( D   : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
               CLK : in  STD_LOGIC;
               EN  : in  STD_LOGIC;
               RST : in  STD_LOGIC;
               Q   : out STD_LOGIC_VECTOR (WIDTH-1 downto 0));
    end component;
    
    component reg_file
        generic(
            width: positive := 32
        );
        port(
            reg_write  : in STD_LOGIC;
            rst        : in STD_LOGIC;
            clk        : in STD_LOGIC;
            
            read_reg_1 : in STD_LOGIC_VECTOR (4 downto 0);
            read_reg_2 : in STD_LOGIC_VECTOR (4 downto 0);
            write_reg  : in STD_LOGIC_VECTOR (4 downto 0);
            
            write_data : in STD_LOGIC_VECTOR (width-1 downto 0);
            read_data_1 : out STD_LOGIC_VECTOR (width-1 downto 0);
            read_data_2 : out STD_LOGIC_VECTOR (width-1 downto 0) 
        );
    end component;
    
    component ALU 
        Port ( 
            A        : in    STD_LOGIC_VECTOR (31 downto 0);
            B        : in    STD_LOGIC_VECTOR (31 downto 0);
            SHAMT    : in    STD_LOGIC_VECTOR (4 downto 0);
            ALUOp    : in    STD_LOGIC_VECTOR (3 downto 0);
            R        : out   STD_LOGIC_VECTOR (31 downto 0);
            Overflow : out   STD_LOGIC;
            Zero     : out   STD_LOGIC
        );
    end component;
    
    component sign_extend
        Port ( A : in STD_LOGIC_VECTOR (15 downto 0);
               B : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component FSM
        Port ( 
           Op : in STD_LOGIC_VECTOR (5 downto 0);
           SHAMT : in STD_LOGIC_VECTOR (4 downto 0);
           FUNCT : in STD_LOGIC_VECTOR (5 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           Mult_done : in STD_LOGIC;
           PCWriteCond : out STD_LOGIC;
           PCWrite : out STD_LOGIC;
           IorD : out STD_LOGIC;
           MemWrite : out STD_LOGIC;
           MemtoReg : out STD_LOGIC;
           IRWrite : out STD_LOGIC;
           PCSrc : out STD_LOGIC_VECTOR (1 downto 0);
           ALUOp : out STD_LOGIC_VECTOR (3 downto 0);
           ALUSrcB : out STD_LOGIC_VECTOR (1 downto 0);
           ALUSrcA : out STD_LOGIC;
           RegWrite : out STD_LOGIC;
           RegDst : out STD_LOGIC;
           LH : out STD_LOGIC;
           LB : out STD_LOGIC;
           MFHI : out STD_LOGIC;
           MFLO : out STD_LOGIC;
           CLO_en : out STD_LOGIC);
    end component;
    
    component top_level
        Port ( A    : in  STD_LOGIC_VECTOR (31 downto 0);
           B    : in  STD_LOGIC_VECTOR (31 downto 0);
           clk  : in  STD_LOGIC;
           rst  : in  STD_LOGIC;
           p_high   : out STD_LOGIC_VECTOR (31 downto 0);
           p_low : out STD_LOGIC_VECTOR (31 downto 0);
           done : out STD_LOGIC);
    end component;
    
    component clo_unit
        Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           num : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    
    signal PC_EN : STD_LOGIC;
    
    signal PC_D : STD_LOGIC_VECTOR(31 downto 0);
    signal PC_Q : STD_LOGIC_VECTOR(31 downto 0);
    signal ins_reg_Q : STD_LOGIC_VECTOR(31 downto 0);
    signal write_reg : STD_LOGIC_VECTOR(4 downto 0);
    signal write_data : STD_LOGIC_VECTOR(31 downto 0);
    
    signal read_data_1 : STD_LOGIC_VECTOR(31 downto 0);
    signal read_data_2 : STD_LOGIC_VECTOR(31 downto 0);
    
    -- Register outputs
    signal A_Q : STD_LOGIC_VECTOR (31 downto 0);
    signal B_Q : STD_LOGIC_VECTOR (31 downto 0);
    signal MemDataReg_Q : STD_LOGIC_VECTOR (31 downto 0);
    signal ALUOut_Q : STD_LOGIC_VECTOR(31 downto 0);
    signal ALUOut_Q_2 : STD_LOGIC_VECTOR(31 downto 0);
    signal ins_reg_se : STD_LOGIC_VECTOR (31 downto 0);
    signal ins_reg_se_shifted : STD_LOGIC_VECTOR (33 downto 0);
    
    -- ALU and ALU control signals
    signal ALU_A : STD_LOGIC_VECTOR (31 downto 0);
    signal ALU_B : STD_LOGIC_VECTOR (31 downto 0);
    signal ALU_SHAMT : STD_LOGIC_VECTOR (4 downto 0);
    signal ALU_ALUOp : STD_LOGIC_VECTOR(3 downto 0);
    signal ALU_R : STD_LOGIC_VECTOR(31 downto 0);
    signal ALU_Zero : STD_LOGIC;
    
    signal Mult_HI : STD_LOGIC_VECTOR (31 downto 0);
    signal mult_LO : STD_LOGIC_VECTOR (31 downto 0);
    signal HI_Q : STD_LOGIC_VECTOR (31 downto 0);
    signal LO_Q : STD_LOGIC_VECTOR (31 downto 0);
    signal LB_Q : STD_LOGIC_VECTOR (31 downto 0);
    signal LH_Q : STD_LOGIC_VECTOR(31 downto 0);
    signal LB_D : STD_LOGIC_VECTOR (31 downto 0);
    signal LH_D : STD_LOGIC_VECTOR (31 downto 0);
    signal mult_done : STD_LOGIC;
    
    signal CLO_num : STD_LOGIC_VECTOR (31 downto 0);
    
    -- FSM signals
    signal PCWriteCond : STD_LOGIC;
    signal PCWrite : STD_LOGIC;
    signal IorD : STD_LOGIC;
    signal MemtoReg : STD_LOGIC;
    signal IRWrite : STD_LOGIC;
    signal PCSrc : STD_LOGIC_VECTOR (1 downto 0);
    signal ALUOp : STD_LOGIC_VECTOR (3 downto 0);
    signal ALUSrcB : STD_LOGIC_VECTOR (1 downto 0);
    signal ALUSrcA : STD_LOGIC;
    signal RegWrite : STD_LOGIC;
    signal RegDst : STD_LOGIC;
    signal LH : STD_LOGIC;
    signal LB : STD_LOGIC;
    signal MFHI : STD_LOGIC;
    signal MFLO : STD_LOGIC;
    signal CLO_en : STD_LOGIC;
    
    signal LH_mem : STD_LOGIC_VECTOR (31 downto 0);
    signal LB_mem : STD_LOGIC_VECTOR (31 downto 0);
    
begin
    PC_reg : reg PORT MAP(
        D => PC_D, 
        CLK => Clock, 
        EN => PC_EN, 
        RST => Reset, 
        Q => PC_Q);
        
    ins_reg : reg PORT MAP(
        D => MemoryDataIn, 
        CLK => Clock, 
        EN => IRWrite, 
        RST => Reset, 
        Q => ins_reg_Q);
         
    register_file : reg_file PORT MAP(
        reg_write => RegWrite, 
        rst => Reset, 
        clk => Clock, 
        read_reg_1 => ins_reg_Q(25 downto 21),
        read_reg_2 => ins_reg_Q(20 downto 16),
        write_reg => write_reg,
        write_data => write_data,
        read_data_1 => read_data_1,
        read_data_2 => read_data_2);
        
     LB_reg : reg PORT MAP(
        D => LB_D,
        CLK => Clock,
        EN => IRWrite,
        RST => Reset,
        Q => LB_Q
     );
     
     LH_reg : reg PORT MAP(
        D => LH_D,
        CLK => Clock,
        EN => IRWrite,
        RST => Reset,
        Q => LH_Q
     );
        
     A : reg PORT MAP(
        D => read_data_1,
        CLK => Clock,
        EN => '1',
        RST => Reset,
        Q => A_Q);
        
    B : reg PORT MAP(
        D => read_data_2,
        CLK => Clock,
        EN => '1',
        RST => Reset,
        Q => B_Q);     
        
    HI : reg PORT MAP(
        D => mult_hi,
        CLK => Clock,
        EN => mult_done,
        RST => Reset,
        Q => HI_Q);
    
    LO : reg PORT MAP(
        D => mult_lo,
        CLK => Clock,
        EN => mult_done,
        RST => Reset,
        Q => LO_Q);
    
    MemoryDataRegister : reg PORT MAP(
       D => MemoryDataIn,
       CLK => Clock,
       EN => '1',
       RST => Reset,
       Q => MemDataReg_Q);
       
    alu_0 : ALU PORT MAP(
        A => ALU_A,
        B => ALU_B,
        SHAMT => ALU_SHAMT,
        ALUOp => ALUOp,
        R => ALU_R, 
        Zero => ALU_Zero);
       
    ALUOut : reg PORT MAP(
        D => ALU_R,
        EN => '1',
        CLK => Clock,
        RST => Reset,
        Q => ALUOut_Q); 

        
    se : sign_extend PORT MAP(
        A => ins_reg_q(15 downto 0),
        B => ins_reg_se);
        
    control : FSM PORT MAP(
        CLK => Clock,
        RST => Reset,
        mult_done => mult_done,
        Op => ins_reg_q(31 downto 26),
        SHAMT => ins_reg_q(10 downto 6),
        FUNCT => ins_reg_q(5 downto 0),
        PCWriteCond => PCWriteCond,
        PCWrite => PCWrite,
        IorD => IorD, 
        MemtoReg => MemtoReg,
        IRWrite => IRWrite,
        PCSrc => PCSrc,
        ALUOp => ALUOp,
        ALUSrcB => ALUSrcB,
        ALUSrcA => ALUSrcA,
        RegWrite => RegWrite,
        RegDst => RegDst,
        MemWrite => MemWrite,
        LH => LH,
        LB => LB,
        MFHI => MFHI,
        MFLO => MFLO,
        CLO_en => CLO_en);
        
    multiplier: top_level PORT MAP(
        CLK => Clock,
        RST => Reset,
        A => A_Q,
        B => B_Q,
        P_high => mult_hi,
        P_low => mult_lo,
        done => mult_done      
    );
    
    clo: clo_unit PORT MAP(
        A => A_Q,
        num => CLO_num
    );
        
    PC_EN <= (PCWriteCond AND ALU_Zero) OR PCWrite;
    write_reg <= ins_reg_Q(20 downto 16) when RegDst = '0' else ins_reg_Q(15 downto 11);
    write_data <= ALUOut_Q when MemToReg = '0' else MemDataReg_Q;
    
    MemoryDataAddress <= PC_Q when IorD = '1' else ALUOut_Q;
    MemoryDataOut <= B_Q;    
    
    ALU_A <= PC_Q when ALUSrcA = '0' else A_Q;
    
    ins_reg_se_shifted <= ins_reg_se & "00";
    ALU_B <= B_Q when ALUSrcB = "00" else
             X"00000004" when ALUSrcB = "01" else
             ins_reg_se when ALUSrcB = "10" else
             ins_reg_se_shifted(31 downto 0) when ALUSrcB = "11";

    PC_D <= ALU_R when PCSrc = "00" else
            ALUOut_Q when PCSrc = "01" else
            PC_Q(31 downto 28) & (ins_reg_Q(25 downto 0) & "00") when PCSrc = "10";
            
    ALUOUT_Q <= HI_Q when MFHI = '1' else
                LO_Q when MFLO = '1';
                
    LB_D <= MemoryDataIn AND X"000000FF";
    LH_D <= MemoryDataIn AND X"0000FFFF";
    
    MemDataReg_Q <= LB_D when LB = '1' else
                    LH_D when LH = '1';   
                    
                    
    write_data <= CLO_num when CLO_EN <= '1';                   
    
end Behavioral;
