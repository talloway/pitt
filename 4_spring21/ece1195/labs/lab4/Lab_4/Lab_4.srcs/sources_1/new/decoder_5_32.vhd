library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_5_32 is
    Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
           B : out STD_LOGIC_VECTOR (31 downto 0));
end decoder_5_32;

architecture Behavioral of decoder_5_32 is

begin
    process(A)
    begin
        if    (A="00000") then B <= X"00000001";
        elsif (A="00001") then B <= X"00000002";
        elsif (A="00010") then B <= X"00000004";
        elsif (A="00011") then B <= X"00000008";
        elsif (A="00100") then B <= X"00000010";
        elsif (A="00101") then B <= X"00000020";
        elsif (A="00110") then B <= X"00000040";
        elsif (A="00111") then B <= X"00000080";
        elsif (A="01000") then B <= X"00000100";
        elsif (A="01001") then B <= X"00000200";
        elsif (A="01010") then B <= X"00000400";
        elsif (A="01011") then B <= X"00000800";
        elsif (A="01100") then B <= X"00001000";
        elsif (A="01101") then B <= X"00002000";
        elsif (A="01110") then B <= X"00004000";
        elsif (A="01111") then B <= X"00008000";
        elsif (A="10000") then B <= X"00010000";
        elsif (A="10001") then B <= X"00020000";
        elsif (A="10010") then B <= X"00040000";
        elsif (A="10011") then B <= X"00080000";
        elsif (A="10100") then B <= X"00100000";
        elsif (A="10101") then B <= X"00200000";
        elsif (A="10110") then B <= X"00400000";
        elsif (A="10111") then B <= X"00800000";
        elsif (A="11000") then B <= X"01000000";
        elsif (A="11001") then B <= X"02000000";
        elsif (A="11010") then B <= X"04000000";
        elsif (A="11011") then B <= X"08000000";
        elsif (A="11100") then B <= X"10000000";
        elsif (A="11101") then B <= X"20000000";
        elsif (A="11110") then B <= X"40000000";
        elsif (A="11111") then B <= X"80000000";
        end if;
    end process;

end Behavioral;
