.text

li $t0, 10 	# $t0 is a, $t0 = 10
addi $t0, $t0, 8 	# $t0 = 10 + 8
li $v0, 1 	# print service
add $a0, $t0, $0 	#Pass value in $t0 to print
syscall		# Invoke OS
li $v0, 10	# Terminate program service
syscall		# Invoke OS