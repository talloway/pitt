.data
first_input: .asciiz "Enter the first index: \n"
second_input: .asciiz "Enter the second index: \n"
num1: .word 0
num2: .word 0
output: .asciiz "The sum of two Fibonacci values is: \n"
ans1: .word 0
ans2: .word 0

.text
main:
  li $v0, 4 # Get first input
  la $a0, first_input
  syscall
  
  li $v0, 5
  syscall
  sw $v0, num1
  
  li $v0, 4 # Get second input
  la $a0, second_input
  syscall
  
  li $v0, 5
  syscall
  sw $v0, num2
  
  li $t6, 1
  li $t7, 2
  
  # Call fibonacci for num1 and store result in ans1  
  lw $a0, num1
  jal fibonacci
  sw $v0, ans1
  
  # Call fibonacci for num2 and store result in ans2
  lw $a0, num2
  jal fibonacci
  sw $v0, ans2

addAndPrint:  
  lw $t0, ans1
  lw $t1, ans2
  add $t2, $t0, $t1
  
  li $v0, 4
  la $a0, output
  syscall
  
  li $v0, 1
  la $a0, ($t2) 
  syscall
  
  # Terminate program
  li $v0, 10
  syscall
  
  
fibonacci:
  beq $a0, 1, base # If n = 1 or 2 return 1
  beq $a0, 2, base

  # PROLOGUE 1
  addi $sp, $sp, -4 # Store return address
  sw $ra, 0($sp)

  # WORK 1 - Call fibonacci of (n - 1)
  sub $a0, $a0, 1  
  jal fibonacci     
  add $a0, $a0, 1

  # EPILOGUE 1
  lw $ra, 0($sp)  # Restore return address
  add $sp, $sp, 4

  sub $sp, $sp, 4   
  sw $v0, 0($sp)
  
  
  # PROLOGUE 2
  sub $sp, $sp, 4  
  sw $ra, 0($sp)

  # WORK 2 - Call fibonacci of (n - 2)
  sub $a0, $a0, 2  
  jal fibonacci    
  add $a0, $a0, 2

  # EPILOGUE 2
  lw $ra, 0($sp)   
  add $sp, $sp, 4

  lw $s0, 0($sp) # Put stack pointer value into s0
  add $sp, $sp, 4

  add $v0, $v0, $s0 # Add s0 to running total
  jr $ra 

base:
  li $v0,1
  jr $ra
  