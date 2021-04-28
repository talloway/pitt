# restart the simulation
restart

#Setup waveforms
add_wave_divider -color White -name Splitter
add_wave_divider -color White -name Splitter

add_wave {/CheckSummer/clock} -name Clock -color Red -radix bin
add_wave {/CheckSummer/reset} -name Reset -color Red -radix bin
add_wave {/CheckSummer/DataIn} -name Datain -color Red -radix bin

add_wave_divider -color White -name Output_Ports

add_wave {/CheckSummer/DataValid} -name DataValid -color Green -radix bin
add_wave {/CheckSummer/ChecksumError} -name ChecksumError -color Green -radix bin

#forcing a clock with 10 ns period
add_force Clock 1 {0 5ns} -repeat_every 10ns

add_force {Reset} 1
add_force {DataIn} -radix bin {00000000}

run 10 ns

add_force {Reset} 0
add_force {DataIn} -radix bin {00000011}

run 10 ns

add_force {DataIn} -radix bin {10011001}

run 10 ns

add_force {DataIn} -radix bin {01100110}

run 10 ns

add_force {DataIn} -radix bin {00000011}

run 10 ns

add_force {DataIn} -radix bin {00000001}

run 10 ns

add_force {DataIn} -radix bin {00000010}

run 10 ns

add_force {DataIn} -radix bin {00000001}

run 10 ns

add_force {DataIn} -radix bin {00000100}

run 10 ns

add_force {DataIn} -radix bin {10011001}

run 10 ns

add_force {DataIn} -radix bin {01100110}

run 10 ns

add_force {DataIn} -radix bin {00000001}

run 10 ns

add_force {DataIn} -radix bin {00000011}

run 10 ns

add_force {DataIn} -radix bin {00000100}

run 10 ns

add_force {DataIn} -radix bin {00000000}

run 10 ns