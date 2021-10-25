# Name: Avery Peiffer
# Username: aep65

.data
buf1: .space 64
buf2: .space 64
inString: .asciiz "Please enter your string: \n"
outString: .asciiz "Output string: "

.text
li $v0, 4 # Read in string
la $a0, inString
syscall

li $v0, 8 # Load into buf1
la $a0, buf1
li $a1, 64
syscall

la $a0, buf1
la $a1, buf2
addi $t0, $t0, 0
addi $t4, $t4, 0 # Initialize $v4 to be used later in logical test

readchar:
    lb $t1, 0($a0)
    beq $t1, 0xA, encounterednewline # Encountering a space or newline calls the copy
    beq $t1, 0x20, readytocopy      
    
    addi $t0, $t0, 1
    addi $a0, $a0, 1
    j readchar

encounterednewline: # We have reached the end of the string, so we will want to exit when we are done copying
    addi $t4, $t4, 1
readytocopy: # We  decrement t0 and a0 so they aren't referencing newline/space 
    subi $t0, $t0, 1
    subi $a0, $a0, 1
    la $a2, ($a0) # We move the contents of a0 to a2 - a2 is acting as our temporary register
    
copy:
    lb $t1, 0($a2)
    beq $t1, 0x20, continueorexit
    beq $t1, $zero, continueorexit
    
    blt $t1, 97, aftercapitalize # Letters that don't need capitalized
    subi $t1, $t1, 0x20 
    
aftercapitalize:
    sb $t1, 0($a1)
    subi $t0, $t0, 1
    subi $a2, $a2, 1
    addi $a1, $a1, 1
    j copy

continueorexit: # This tells us if we reached the end of the string by checking $t4
    beq $t4, 1, printandexit # We read a newline character earlier so we end
    addi $a0, $a0, 2 # We increment $a0 by 2 because +1 goes back to the space character, resulting in infinite loop
    j readchar # We read a space - there is still more to read

printandexit:
    sb $t1, 0($a1) # Add in null terminator
    
    li $v0, 4
    la $a0, outString
    syscall

    li $v0, 4
    la $a0, buf2
    syscall

