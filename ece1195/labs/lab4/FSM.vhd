library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FSM is
    Port ( Op : in STD_LOGIC_VECTOR (5 downto 0);
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
           CLO_en : out STD_LOGIC
           );
end FSM;

architecture arc of FSM is
    type state_type is (S0, S1, S2, S3, S4, S5, S6, S7, S8, SM, SM_done);
    signal state : state_type;
    
    signal i : boolean;
    signal r : boolean;

begin
    process(CLK, RST)
    begin
        if (CLK'event and CLK = '1' and RST = '1') then 
            state <= S0;
        
        elsif (CLK'event and CLK = '1') then
            case state is
                -- Instruction fetch
                when S0 => 
                    i <= false;
                    r <= false;
                    state <= S1;
                    
                -- Instruction decode
                when S1 =>
                    if ((unsigned(op) = 0)) then
                        -- MULTU
                        if (unsigned(funct) = 25) then
                            state <= SM;
                        
                        -- MFHI
                        elsif (unsigned(funct) = 16) then
                            MFHI <= '1';
                            MFLO <= '0';
                            state <= S2;
                            
                        -- MFLO
                        elsif (unsigned(funct) = 18) then
                            MFHI <= '0';
                            MFLO <= '1';
                            state <= S2;
                        
                        -- JR
                        elsif (unsigned(funct) = 8) then
                            state <= S2;
                            
                        -- R-type
                        else
                            r <= true;
                            state <= S2;
                        end if;
                    
                    -- I-type
                    elsif ((unsigned(op) > 7) and (unsigned(op) < 16)) then
                        i <= true;
                        state <= S2;
                        
                    -- LW | SW
                    elsif (unsigned(op) = 35 or unsigned(op) = 43) then
                        state <= S4;
                        
                    -- J
                    elsif (unsigned(op) = 2) then
                        state <= S0;
                        
                    -- BNE | BLTZAL
                    elsif (unsigned(op) = 5 or unsigned(op) = 1) then
                        state <= S7;                                               
                        
                    -- CLO
                    elsif (unsigned(op) = 26) then
                        CLO_en <= '1';
                        
                    end if;
                    
                -- R-type/I-type execution
                when S2 =>
                    state <= S3;
                    
                -- R-type/I-type Completion                
                when S3 =>
                    state <= S0; 
                    
                -- LW/SW memory address computation    
                when S4 =>
                    if (unsigned(op) = 35) then
                        state <= S5;
                    elsif (unsigned(op) = 43) then
                        state <= S6;
                    end if;
                    
                -- LW memory writeback    
                when S5 =>
                    state <= S0;
              
                when S6 =>
                    state <= S0;
                    
                when S7 =>
                    state <= S8;
                    
                when S8 =>
                    state <= S0;
                    
                when SM => 
                    if (mult_done = '1') then
                        state <= SM_done;
                    else
                        state <= S0;
                    end if;
                    
                when SM_done =>
                    state <= S0;
                    
                
            end case;
        end if;
    end process;
    
    process(state)
    begin
    
        case state is
            -- Instruction fetch 
            when S0 =>
                
               -- Initialize all the signals
               PCWriteCond <= '0';
               PCWrite <= '0';
               MemtoReg <= '0';
               PCSrc <= "00";
               ALUOp <= "0000";
               ALUSrcB <= "00";
               ALUSrcA <= '0';
               RegWrite <= '0';
               RegDst <= '0';
               LH <= '0';
               LB <= '0';
               MFHI <= '0';
               MFLO <= '0';
               CLO_en <= '0';

                -- Calculate PC <-- PC + 4
                if (unsigned(op) /= 1 and unsigned(op) /= 3 and unsigned(op) /= 5 and (unsigned(op) /= 0 or unsigned(funct) /= 8)) then 
                    PCSrc <= "00";
                    PCWriteCond <= '0';
                    PCWrite <= '1';
                    ALUOp <= "0001";
                    ALUSrcA <= '0';
                    ALUSrcB <= "01";
                elsif (unsigned(op) = 2) then PCSrc <= "10";
                end if;
                
                IorD <= '0';
                MemWrite <= '0';
                IRWrite <= '1';
            
            -- Instruction Decode/Register fetch
            -- Instruction actually written into IR here
            when S1 =>
                PCWrite <= '0'; 
                IRWrite <= '0';
                
                if (unsigned(op) = 2) then
                    PCSrc <= "10";
                end if;
                        
            -- R-type and I-type execution, also JR
            when S2 =>
               ALUSrcA <= '1';
               
               if(r = true) then
                    ALUSrcB <= "00";
                    
                    -- ADDU
                    if (unsigned(funct) = 33) then
                        ALUOp <= "0100";
                    
                    -- AND
                    elsif (unsigned(funct) = 36) then
                        ALUOp <= "0000";
                        
                    -- SUB
                    elsif (unsigned(funct) = 34) then
                        ALUOp <= "0101";
                        
                    -- SRA
                    elsif (unsigned(funct) = 3) then
                        ALUOp <= "1110";
                        
                    -- SLLV | SLL
                    elsif (unsigned(funct) = 4 or unsigned(funct) = 0) then
                        ALUOp <= "1100";
                    
                    end if;
            
               elsif(i = true) then
                    ALUSrcB <= "10";
                    
                    -- ADDI
                    if (unsigned(op) = 8) then
                        ALUOp <= "0100";
                    
                    -- ORI
                    elsif (unsigned(op) = 13 or unsigned(op) = 15) then
                        ALUOp <= "0001";
                    
                    -- SLTI
                    elsif (unsigned(op) = 10) then
                        ALUOp <= "1010";
                    
                    end if;
                
                -- JR    
                elsif(i = false and r = false) then
                    ALUOp <= "0011"; -- Replaced A NOR B with A in logical unit to accommodate JR
               end if;
               
            -- R-type and I-type writeback
            when S3 =>
               MemtoReg    <= '0';
               
               if(r = true) then
                    RegDst <= '1';
                    RegWrite    <= '1';
               elsif(i = true) then
                    RegDst <= '0';
                    RegWrite <= '1';
               end if;
               
           -- LW/SW memory address computation    
           when S4 =>
               ALUSrcA <= '1';
               ALUSrcB <= "10";
               
           -- LW memory access    
           when S5 =>
               if (unsigned(op) = 32) then
                   LB <= '1';
                   LH <= '0';
               elsif (unsigned(op) = 33) then
                   LB <= '0';
                   LH <= '1';
               end if;
               
               IorD <= '1';
               RegDst <= '0';
               MemtoReg <= '1';
               RegWrite <= '1';
               
           -- SW memory access
           when S6 =>
               IorD <= '1';
               MemWrite <= '1';
               
           -- BNE comparison
           when S7 =>
               ALUOp <= "0100";
               ALUSrcB <= "11";  
               
           -- BNE address calculation
           when S8 =>
               PCWriteCond <= '1';
               PCWrite <= '0';   
               
           when others =>
                 
               
               
        end case;
    
    end process;
end arc;
