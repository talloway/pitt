library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_control is
    Port ( Ins : in STD_LOGIC_VECTOR (15 downto 0);
           Op : in STD_LOGIC_VECTOR (5 downto 0);
           ALUOp_out : out STD_LOGIC_VECTOR (3 downto 0);
           SHAMT : out STD_LOGIC_VECTOR (4 downto 0));
end ALU_control;

architecture Behavioral of ALU_control is
    signal funct : STD_LOGIC_VECTOR(5 downto 0);

begin
    SHAMT <= Ins(10 downto 6);
    funct <= Ins(5 downto 0);
    
    process(Op)
    begin
        -- R TYPE
        if(unsigned(Op) = 0) then
            -- ADDU
            if (unsigned(funct) = 33) then
                ALUOp_out <= "0100";
            
            -- SUB
            elsif (unsigned(funct) = 34) then
                ALUOp_out <= "0101";
            
            -- AND
            elsif (unsigned(funct) = 36) then
                ALUOp_out <= "0000";
            
            -- SRA
            elsif (unsigned(funct) = 3) then
                ALUOp_out <= "1110";
            
            -- SLLV | SLL
            elsif (unsigned(funct) = 4 or unsigned(funct) = 0) then
                ALUOp_out <= "1100";
            end if;
        
        -- ADDI
        elsif(unsigned(Op) = 8) then
            ALUOp_out <= "0100";
        
        -- SLTI
        elsif (unsigned(Op) = 10) then
            ALUOp_out <= "1010";
        
        -- ORI | LUI
        elsif (unsigned(Op) = 13 or unsigned(Op) = 15) then
            ALUOp_out <= "0001";
        
        end if;
    end process;

end Behavioral;
