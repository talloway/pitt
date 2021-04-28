# restart the simulation
restart

#top-level CPU testbench is named cpu_tb
#this instruction will add the internal signals and ports of a component name U_1, which in this case is the memory block.
#this should be replaced by the name of the componenet in your top-level testbench
add_wave {{/cpu_tb/U_1}} 

# Forcing a program (instruction memory)

#addi $3, $0, 12
#ori $3, $3, 2
#addi $4, $0, 6
#multu $3, $4
#mfhi $5
#mflo $6
#addu $3, $3, $4
#sub $5, $3, $4

# you can use any of the following commands as an example on how to initilaize a memory location with a value
# the first 4 memory locations are initialized with the instruction codes correpsonding to the 4 instructions above.
add_force {/cpu_tb/U_1/mw_U_0ram_table[0]} -radix hex {2060000C}
add_force {/cpu_tb/U_1/mw_U_0ram_table[1]} -radix hex {34630002}
add_force {/cpu_tb/U_1/mw_U_0ram_table[2]} -radix hex {20800004}
add_force {/cpu_tb/U_1/mw_U_0ram_table[3]} -radix hex {00640019}
add_force {/cpu_tb/U_1/mw_U_0ram_table[4]} -radix hex {00002810}
add_force {/cpu_tb/U_1/mw_U_0ram_table[5]} -radix hex {00003012}
add_force {/cpu_tb/U_1/mw_U_0ram_table[6]} -radix hex {00632021}
add_force {/cpu_tb/U_1/mw_U_0ram_table[7]} -radix hex {00A32022}

#forcing a clock with 10 ns period
add_force clock 1 {0 5ns} -repeat_every 10ns

#give a reset signal
add_force reset 0
run 2500ps
add_force reset 1
run 5 ns
add_force reset 0

run 200 ns