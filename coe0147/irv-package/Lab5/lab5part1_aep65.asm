.data
input_str: .space 64
enter_input: .asciiz "Enter your string?\n"
output: .asciiz "Here is your output: \n"

.text

main:
  li $v0, 4
  la $a0, enter_input
  syscall

  li $v0, 8
  la $a0, input_str
  li $a1, 64
  syscall

addi $t0, $t0, -1 # Index without an off-by-one error

len:
  lb $t1, 0($a0)
  beq $t1, 0xA, checkIfDone # Stop at newline character
  addi $t0, $t0, 1 # $t0 contains string length
  addi $a0, $a0, 1
  j len


checkIfDone: # See if 5 characters have been changed 
  beq $t5, 5, exit
  jal getRand
  j checkIfDone

getRand:
  li $v0, 42
  la $a1, ($t0)
  syscall
  
  move $a1, $a0
  la $a0, input_str
 
  li $t3, 0
goToPosition: # Find the spot where the rand points to
  lb $t1, 0($a0)
  beq $t3, $a1, replace
  addi $a0, $a0, 1
  addi $t3 $t3, 1
  j goToPosition

replace: # Replace position with @ character
  beq $t1, 0x40, dontIncrement
  beq $t1, 0x20, dontIncrement # Don't think we're supposed to replace spaces
  li $t4, 0x40
  sb $t4, 0($a0)
      
increment:
  addi $t5, $t5, 1
dontIncrement:
  jr $ra
 
  
exit:
  li $v0, 4
  la $a0, output
  syscall
  
  la $a0, input_str
  syscall
   