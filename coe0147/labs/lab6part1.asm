# username: aep65
# name: Avery Peiffer
# lab6part1
.data
A:	.space	64
B:	.space	64
PLUSONE: .space 64
B_PLUS: .space 64
C:	.space	64

A_str: 	.asciiz	"Please enter the first 16-bit binary number: "
B_str:	.asciiz	"Please enter the second 16-bit binary number: "
C_str:	.asciiz	"Result is: "
OV_str:	.asciiz	"\nOverflow bit: "
OP_str: .asciiz "Please choose the operation: 0 as addition or 1 as subtraction "

.text
	j main		# DO NOT EDIT THIS LINE

########################
# PLACE YOUR CODE HERE #
########################
# BitAdder
#	adds two bits with the carry in and outputs the 1-bit sum and carry out for the next step
# INPUT:
# 	BitAdder expects arguments in $a0, $a1, $a2
# 	$a0 = specific bit (of values either 0 or 1 in decimal) from A, do not pass character '0' or '1'
# 	$a1 = specific bit (of values either 0 or 1 in decimal) from B, do not pass character '0' or '1'
# 	$a2 = carry in (of values either 0 or 1 in decimal) from previous step
# OUTPUT: 
# 	$v0 = 1-bit sum in $v0 
#	$v1 = carry out for the next stage
# TRASHES:
# FILL THIS IN TO BE NICE
BitAdder:
	add $t4, $a0, $a1
	add $t4, $t4, $a2
	
	beq $t4, 0, s0c0
	beq $t4, 1, s1c0
	beq $t4, 2, s0c1
	
	s1c1:
	li $v0, 1
	li $v1, 1
	j return
	
	s0c1:
	li $v0, 0
	li $v1, 1
	j return
	
	s1c0:
	li $v0, 1
	li $v1, 0
	j return
	
	s0c0:
	li $v0, 0
	li $v1, 0
	j return
	
	return:
	# lw $ra, 0($sp)
	# addi $sp, $sp, 4
	jr $ra

# AddNumbers 
# 	it adds two strings, each of which represents a 16-bit number 
# INPUT:
# 	$a0 = address of A
# 	$a1 = address of B
# 	$a2 = address of C
# OUTPUT:
#	$v0 = overflow bit (either 0 or 1 in decimal)
AddNumbers:
	li $t0, 0
	la $t5, C
	
	gotoEnd: # Go to end of strings involved so we can work with LSB
	beq $t0, 0xF, work
	addi $t0, $t0, 1
	addi $a0, $a0, 1
	addi $a1, $a1, 1
	addi $t5, $t5, 1
	j gotoEnd
	
	work:
	li $t0, 0 # Counter
		
	move $t6, $a0
	move $t7, $a1
	
	li $a2, 0
	
	loop:
	lb $t1, 0($t6)
	lb $t2, 0($t7)
	
	addi $t1, $t1, -0x30
	move $a0, $t1
	addi $t2, $t2, -0x30
	move $a1, $t2
	move $a2, $v1 # Make c_out the next c_in
	
	addi $sp, $sp, -4 # Save return address
	sw $ra, 0($sp)
	jal BitAdder
	lw $ra, 0($sp) # Restore return address 
	addi $sp, $sp, 4
	
	addi $v0, $v0, 0x30
	sb $v0, 0($t5)
	
	beq $t0, 0xF, exit
	
	addi $t0, $t0, 1
	addi $t5, $t5, -1
	addi $t6, $t6, -1
	addi $t7, $t7, -1
	j loop

	exit:
	add $v0, $zero, $v1 # Put overflow bit into correct register
	jr $ra
	
	
	
	
# Subtraction 
# 	it takes 2's complement of B, this is done by rewriting the B in memory
# INPUT:
# 	N/A
# OUTPUT:
#	N/A
Subtraction:
	
	# Put B into its ones-comp form
	la $a0, B
	li $t0, 0
	
    onescomp:
	lb $t1, 0($a0)
	beq $t1, 0x30, zerotoone
	
	onetozero:
	addi $t1, $t1, -1
	sb $t1, 0($a0)
	j increment
	
	zerotoone:
	addi $t1, $t1, 1
	sb $t1, 0($a0)
	
	increment:
	beq $t0, 0xF, twoscomp
	addi $a0, $a0, 1
	addi $t0, $t0, 1
	j onescomp
	
    twoscomp:
    	li $t0, 0
    	la $a1, PLUSONE
    	li $t1, 0x30
    	li $t2, 0x31
    	
    	generateone:
    	beq $t0, 0xF, addone
    	sb $t1, 0($a1)
    	addi $a1, $a1, 1
    	addi $t0, $t0, 1
    	j generateone
    	
    	addone:
    	sb $t2, 0($a1)
    	
    	# ADD ONE to get 2's complement
    	la $a2, B_PLUS
    	addi $sp, $sp, -4 # Save return address
	sw $ra, 0($sp)
	jal AddNumbers
	lw $ra, 0($sp) # Restore return address 
	addi $sp, $sp, 4
	
	# Add numbers together
    	la $a0, A
    	la $a1, B_PLUS
    	li $a2, 0
    	addi $sp, $sp, -4 # Save return address
	sw $ra, 0($sp)
	jal AddNumbers
	lw $ra, 0($sp) # Restore return address 
	addi $sp, $sp, 4
    	
	jr $ra
#============================================== 
#Do NOT edit the rest of the code in this file.
#============================================== 

main: #
        jal setRegisterStates

	# print A_str
	la	$a0, A_str
	li	$v0, 4
	syscall

	# read A
	la	$a0, A
	li	$a1, 64
	li	$v0, 8
	syscall

	# print B_str
	la	$a0, B_str
	li	$v0, 4
	syscall

	# read B
	la	$a0, B
	li	$a1, 64
	li	$v0, 8
	syscall

	# clip A and B to 16-characters
	li	$t0, 0x00
	la	$t1, A
	sh	$t0, 16($t1)
	la	$t1, B
	sh	$t0, 16($t1)
	
	# print OP_str
	la	$a0, OP_str
	li	$v0, 4
	syscall
	
	# read operation + or -
	li	$v0, 5
	syscall
	
	beq $v0, 0, Addition
	jal Subtraction
	
Addition:
	# call AddNumbers
	la	$a0, A
	la	$a1, B
	la	$a2, C
        jal AddNumbers
	
	move	$t3, $v0	# save overflow bit

	# clip C to 16-characters
	li	$t0, 0x00
	la	$t1, C
	sh	$t0, 16($t1)

	# print C_str
	la	$a0, C_str
	li	$v0, 4
	syscall

	# print C
	la	$a0, C
	li	$v0, 4
	syscall

	# print OV_str
	la	$a0, OV_str
	li	$v0, 4
	syscall

	# print overflow
	move	$a0, $t3
	li	$v0, 1
	syscall
	
	# done
        jal checkRegisterStates

        li $v0, 10          #Exit
        syscall

setRegisterStates:
    li $s0, -1
    li $s1, -1
    li $s2, -1
    li $s3, -1
    li $s4, -1
    li $s5, -1
    li $s6, -1
    li $s7, -1
    sw $sp, old_sp_value
    sw $s0, ($sp)       #Write something at the top of the stack
    jr $ra

checkRegisterStates:

    bne $s0, -1, checkRegisterStates_failedCheck
    bne $s1, -1, checkRegisterStates_failedCheck
    bne $s2, -1, checkRegisterStates_failedCheck
    bne $s3, -1, checkRegisterStates_failedCheck
    bne $s4, -1, checkRegisterStates_failedCheck
    bne $s5, -1, checkRegisterStates_failedCheck
    bne $s6, -1, checkRegisterStates_failedCheck
    bne $s7, -1, checkRegisterStates_failedCheck

    lw $t0, old_sp_value
    bne $sp, $t0, checkRegisterStates_failedCheck

    lw $t0, ($sp)
    bne $t0, -1, checkRegisterStates_failedCheck

    jr $ra                      #Return: all registers passed the check.
    
    checkRegisterStates_failedCheck:
        la $a0, failed_check    #Print out the failed register state message.
        li $v0, 4
        syscall

        li $v0, 10              #Exit prematurely.
        syscall

.data
	old_sp_value:   .word 0
	failed_check:   .asciiz "\nOne or more registers was corrupted by your code.\n"
	