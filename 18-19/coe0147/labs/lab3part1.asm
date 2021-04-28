# Name: Avery Peiffer
# Username: aep65

.text
    li $v0, 4
    la $a0, msg1
    syscall
    
    li $v0, 5
    syscall
    move $t0, $v0
    
    # Want to access bits 17-19
    andi $t1, $t0, 0x000F # Access bits 16-19
    srl $t1, $t1, 1 # Shift right to have bits 17-19
    
    li $v0, 4 # Prints out second message
    la $a0, msg2
    syscall
    
    li $v0, 1
    move $a0, $t1 
    syscall

.data
    msg1: .asciiz "Please enter your integer:\n"
    msg2: .asciiz "Here is the output: "
