# Name: Avery Peiffer
# Username: aep65

.data
instring: .asciiz "Please enter your string:\n"
outstring: .asciiz "Here is the output: "
some_string: .space 64

.text

# Prints the prompt string
li $v0, 4
la $a0, instring 
syscall 

# Reads in string
li $v0, 8
la $a0, some_string
li $a1, 64
syscall

li $t0, 0

for_loop:
slti $t1, $t0, 64
beq $t1, $0, exit

lb $t4, 0($a0)
blt $t4, 65, done 
bgt $t4, 122, done # Valid range of ASCII values is 65-122 at this point
beq $t4, 0, exit

slti $t2, $t4, 91
li $t3, 1
beq $t2, $t3, upper 
bne $t2, $t3, lower

upper:
addi $t4, $t4, 32 # Lowercases
j done

lower:
blt $t4, 97, done # Excludes characters with ASCII 91-96 from being changed
addi $t4, $t4, -32 # Capitalizes

done:
addi $t0, $t0, 1
sb $t4, 0($a0)
addi $a0, $a0, 1

j for_loop
exit:

#Prints the output string
li $v0, 4 
la $a0, outstring 
syscall

#Prints the string with changed cases
la $a0, some_string 
li $v0, 4
syscall

