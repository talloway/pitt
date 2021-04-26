library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity logical_unit_tb is
end logical_unit_tb;

architecture sim of logical_unit_tb is
    component logical_unit is
    port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Op : in STD_LOGIC_VECTOR (1 downto 0);
           R : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    signal A  :  STD_LOGIC_VECTOR(31 downto 0);
    signal B  :  STD_LOGIC_VECTOR(31 downto 0);
    signal Op :  STD_LOGIC_VECTOR(1 downto 0);
    signal R  :  STD_LOGIC_VECTOR(31 downto 0);    
    signal test : STD_LOGIC_VECTOR(31 downto 0);

begin
    dut: logical_unit
        port map(
            A => A,
            B => B,
            Op => Op,
            R => R        
        );

    process
    variable seed1, seed2 : positive;
    variable rand : real;
    variable range_of_rand : real := real(2**31-1);
    
    begin
        for i in 0 to 15 loop
            uniform(seed1, seed2, rand);
            A <= std_logic_vector(to_unsigned(integer(rand*range_of_rand), 32));
            
            uniform(seed2, seed1, rand);
            B <= std_logic_vector(to_unsigned(integer(rand*range_of_rand), 32));
            
            Op <= "00";
            test <= A AND B;
            wait for 10 ns;
            assert (R = test) report "A AND B failed";
            
            Op <= "01";
            test <= A OR B;
            wait for 10 ns;
            assert (R = test) report "A OR B failed";
            
            Op <= "10";
            test <= A XOR B;
            wait for 10 ns;
            assert (R = test) report "A XOR B failed";
            
            Op <= "11";
            test <= A NOR B;
            wait for 10 ns;
            assert (R = test) report "A NOR B failed";
            
            report "Simulation finished.";
            wait;
        end loop;
    end process;
end sim;
