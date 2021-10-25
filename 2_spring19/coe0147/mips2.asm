.text
li $v0, 4	# Print prompt
la $a0, x_msg	
syscall
li $v0, 5	# Get value (x)
syscall
move $t0, $v0	# Put x into a
addi $t0, $t0, 10	# Add 10 to x
li $v0, 4 	# Print output string
la $a0, msg
syscall
li $v0, 1	# Print a
add $a0, $t0, $0
syscall
li $v0, 10	# Terminate
syscall

.data
x_msg: .asciiz "Number x to add?\n"
msg: .asciiz "Sum of 10 + x is\n"