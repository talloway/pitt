.text
    li $v0, 4 # Prints out msg1
    la $a0, msg1
    syscall
    
    li $v0, 5 # Takes in int 1
    syscall
    move $t0, $v0
    
    li $v0, 4 # Prints out msg2
    la $a0, msg2
    syscall
    
    li $v0, 5 # Takes in int 2
    syscall
    move $t1, $v0
    
    sub $t2, $t0, $t1 # Does subtraction and stores
    
    li $v0, 4 # Prints out msg3
    la $a0, msg3
    syscall
    
    li $v0, 1 # Prints out int 1
    move $a0, $t0
    syscall
    
    li $v0, 4 # Prints out msg4
    la $a0, msg4
    syscall
    
    li $v0, 1 # Prints out int 2
    move $a0, $t1
    syscall
    
    li $v0, 4 # Prints out msg 5
    la $a0, msg5
    syscall
    
    li $v0, 1 # Prints out difference
    move $a0, $t2
    syscall
    
    
.data
    msg1: .asciiz "What is the first value?\n"
    msg2: .asciiz "What is the second value?\n"
    msg3: .asciiz "The difference of "
    msg4: .asciiz " and "
    msg5: .asciiz " is "
