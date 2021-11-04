# restart the simulation
restart

#top-level CPU testbench is named cpu_tb
#this instruction will add the internal signals and ports of a component name U_1, which in this case is the memory block.
#this should be replaced by the name of the componenet in your top-level testbench
add_wave {{/cpu_tb/U_1}} 

# Forcing a program (instruction memory)

#addi $3, $0, 1
#lh $4, 3($6)
#lb $2, 2($1)
#clo $5, $3
#bne $6, $3, 132
#bltzal $7, 134
#j deadbeef

# you can use any of the following commands as an example on how to initilaize a memory location with a value
# the first 4 memory locations are initialized with the instruction codes correpsonding to the 4 instructions above.
add_force {/cpu_tb/U_1/mw_U_0ram_table[0]} -radix hex {20600001}
add_force {/cpu_tb/U_1/mw_U_0ram_table[1]} -radix hex {84C40003}
add_force {/cpu_tb/U_1/mw_U_0ram_table[2]} -radix hex {80220002}
add_force {/cpu_tb/U_1/mw_U_0ram_table[3]} -radix hex {70A31821}
add_force {/cpu_tb/U_1/mw_U_0ram_table[4]} -radix hex {14C30082}
add_force {/cpu_tb/U_1/mw_U_0ram_table[5]} -radix hex {04F00884}
add_force {/cpu_tb/U_1/mw_U_0ram_table[6]} -radix hex {08ADBEEF}
add_force {/cpu_tb/U_1/mw_U_0ram_table[7]} -radix hex {00000000}

#forcing a clock with 10 ns period
add_force clock 1 {0 5ns} -repeat_every 10ns

#give a reset signal
add_force reset 0
run 2500ps
add_force reset 1
run 5 ns
add_force reset 0

run 200 ns