# University of Pittsburgh
# CoE-0147 Instant Runoff Voting
# Instructor: Kartik Mohanram
# Teaching Assistants: Xingzhe Song and Yuqi Li
# ---------------------------------------------

# Submitted by: Student Name Avery Peiffer

# --- BEGIN ---
# --- Uncomment only the test that you wish to run ---
#.include "test1.asm"
#.include "test2.asm"
#.include "test3.asm" 
#.include "test4.asm"
#.include "test5.asm"
#.include "test6.asm" 
#.include "test7.asm"
#.include "test8.asm"
#.include "test9.asm"
#.include "test10.asm"

# ---  END  ---

.data
numofones: 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
pass_msg: .asciiz "PASS"
fail_msg: .asciiz "FAIL @"

.text
# --- Your code goes below this line ---
# The test data is located in the files test1.asm, test2.asm, etc.
# The first word at the 'votes' variable is the number of voters
# The second word at the 'votes' variable is the number of candidates
# The votes are thus setup as a flattened two-dimensional array, and the rest
# of the entries define the votes (preferences) of each voter in turn.
# The 'results' variable provides pre-allocated space to record the winner and
# loser of each round, as described in the project description. It is
# initialized to 0, and you need only record the results till someone emerges
# the winner per the rules of IRV.
 
# Direct your questions to  all three of us: x.song/yul206/kmram at pitt.edu
# Good luck!

# Don't reuse these
la $a0, votes
lw $a1, 0x10010000 # 5 for first test
lw $a2, 0x10010004 # 3 for first test

subi $v1, $a2, 1
li $v0, 0
li $s2, 0


beginround:
  beq $v0, $v1, done
  move $t0, $zero
  li $a3, 0x10010008
  li $t3, 0x4
  mult $a2, $t3
  mflo $t3
  li $s2, 0
  
  la $t7, numofones
  
  # For each candidate, we find the number of ones that the candidate has amassed. 
  # We then put that number into the numofones array. 
  foreachrow:
    move $t1, $zero
    beq $t0, 0, reset
    sw $t2, 0($t7)
    addi $t7, $t7, 4
    move $t2, $zero
    addi $a3, $a3, 0x4 # Increment base address to count number of ones for next candidate
    
    beq $t0, $a2, findwinnerandloser
    addi $t0, $t0, 1
    j foreachcol
    reset:
      move $t2, $zero
     
      addi $t0, $t0, 1
    
    foreachcol:
      beq $t1, $a1, foreachrow
    
      mult $t3, $t1
      mflo $t4
      add $t4, $t4, $a3
      
      lw $t4, 0($t4)
      beq $t4, $zero, encounteredeliminatedcandidate
      beq $t4, 1, increment
      addi $t1, $t1, 1
      j foreachcol
      
      increment:
        addi $t2, $t2, 1
        addi $t1, $t1, 1
        j foreachcol
        
      # Since the array will have 0's interspersed, we want it to skip the row where it finds this
      encounteredeliminatedcandidate:
        li $t2, -1 
        j foreachrow
  
  # We go through the numofones array and find the min and max of it
  findwinnerandloser:
    move $t2, $zero # To use later to find loser
    move $t1, $zero # To use later to find winner
    move $t6, $zero # Counter that will tell what row it's in
    
    sub $t7, $t7, $t3
    move $t4, $zero # $t4 is round winner - start it at zero
    move $t5, $a1 # $t5 is round loser - start it at total number of voters (max)
   
   
    bne $t5, -1, iteratethrough
    move $t5, $a1
    
    iteratethrough:
      beq $t6, $a2, putinresults
      lw $t3, 0($t7)
      blt $t3, $zero, foundpastloser
      blt $t4, $t3, newwinner
      checkforloser:
      bgt $t5, $t3, newloser
      beq $t4, $t5, changemanually 
      addi $t6, $t6, 1
      addi $t7, $t7, 4
      j iteratethrough
      
      # There are some corner cases where we have to change the loser manually.
      # When there are n candidates, and there is an n-way tie, the winner and loser will (without this) stay 
      # as the first candidate when, in reality, the loser should be the second candidate.
      # Manualloser gives us a one-time 'push' during each round that ensures that this will not happen.
      changemanually:
      blt $s2, 1, manualloser
      
      addi $t6, $t6, 1
      addi $t7, $t7, 4
      j iteratethrough
      
      manualloser:
      li $s3, 20
      bgt $a1, $s3, noadd
      move $t5, $t3
      move $t2, $t6
      addi $t6, $t6, 1
      addi $t7, $t7, 4
      addi $s2, $s2, 1
      j iteratethrough
      
      noadd:
        addi $t6, $t6, 1
        addi $t7, $t7, 4
        addi $s2, $s2, 1
        j iteratethrough
      
      newwinner:
        move $t4, $t3
        move $t1, $t6 # ROW OF WINNER
        j checkforloser
      
      newloser:
        move $t5, $t3
        move $t2, $t6 # ROW OF LOSER
        addi $t6, $t6, 1
        addi $t7, $t7, 4
        j iteratethrough
      
      foundpastloser:
        addi $t6, $t6, 1
        addi $t7, $t7, 4
        j iteratethrough
      
   # $t1 contains row of winner (winner - 1)
   # $t2 contains row of loser (loser - 1)
   # $t4 contains number of votes that the round winner received
   # $t3, $t5 can be reused   
   
   # We go to the results array and enter the results for this round. Then we check to see if 
   # a candidate amassed >= 50% of the first-place votes and end the algorithm if so.
   putinresults: 
     la $t5, results
     findnonzeroresult: # Want to go to first open position in results before entering 
       lw $t3, 0($t5)
       beq $t3, $zero, enterresults
       addi $t5, $t5, 4
       j findnonzeroresult
     
     enterresults:
       addi $t1, $t1, 1
       addi $t2, $t2, 1
       sw $t1, 0($t5)
       sw $t2, 4($t5)
     
     
     checkforwinner: # If the round winner has >= 50% of ones available, end the voting
       li $t3, 0x2
       mult $t3, $t4
       mflo $t3
       bge $t3, $a1, done
     
   
     # 0($t4) contains round winner and 4($t4) contains round loser
     # $t1 contains row of winner and $t2 contains row of loser
     # $t1, $t3, $t4, and $t5 can be reused from last function
     
     # To delete the loser we add three components:
     # 1) The base (where the array starts)
     # 2) The row offset (what candidate is it)
     # 3) The skip factor (for each voter)
     # 1 + 2 is a constant that can be determined outside of this block
    deleteloser: 
      lw $t4, 4($t5)# Get loser
      move $t3, $a2 # Make t3 be the number of candidates - i.e. number of votes to skip each time
      li $t0, 0x0 # To be used as counter
      li $t5, 0x4
      mult $t4, $t5
      mflo $t4 # Row offset 
      la $t7, 0x10010004 # Start it at the number before the voter data starts
      move $s0, $t2
      add $t4, $t4, $t7 # Base + Row Offset (CONSTANT)
      
      settozero: # For each voter
        la $t7, 0x10010004
        li $t5, 0x4
        beq $t0, $a1, endround
        
        mult $a2, $t0 # Multiply counter by number of candidates
        mflo $t6 
        mult $t6, $t5
        mflo $t6
        add $t6, $t6, $t4 # Base + Row Offset + Skip Factor
       
        
        li $t5, 0
        lw $t7, 0($t6)
        sw $t5, 0($t6)
       
        # $t7 contains the value that was just deleted
        # For a given value that we delete, we check all around it to reassign the other values if necessary
        # First, we go backwards (if we can). Then, we come back to the same spot and go forwards (if we can).
        subtractifnecessary:
          move $t5, $s0
          move $s1, $t5
          addi $t5, $t5, -1
          addi $t3, $a1, -1
          move $t1, $t6 # Save address of where it was deleted for goForward
          
          goBack: # Stop after row gets to zero
            beq $t5, $zero, goForward
            addi $t6, $t6, -4
            lw $t2, 0($t6)
            bgt $t2, $t7, subtractleft
            addi $t5, $t5, -1
            j goBack
          
          goForward:
            move $t5, $s1
            move $t6, $t1 # Go back to where the deleted row is
          goForwardLoop:
            beq $t5, $a2, continue
            addi $t6, $t6, 4
            lw $t2, 0($t6)
            bgt $t2, $t7, subtractright
            addi $t5, $t5, 1
            j goForwardLoop
           
          subtractleft:
            addi $t2, $t2, -1
            sw $t2, 0($t6)
            addi $t5, $t5, -1
            j goBack
          subtractright:
            addi $t2, $t2, -1
            sw $t2, 0($t6)
            addi $t5, $t5, 1
            j goForwardLoop
        
        continue:
          addi $t0, $t0, 1
          j settozero
    
      endround:
        addi $v0, $v0, 1
        j beginround
      
    
    done: # We are done - either all of the rounds have been completed or someone has >= 50% of the first-place votes
    
# Store your winner and loser results of each round starting from the address
# with the label "results" in memory
# ---------------------------------------------- #
# --- Do NOT modify anything below this line ---
# ---------------------------------------------- #
.text
la $t0, votes
addi $t0, $t0, 4
lw $s0, 0($t0)
addi $s0, $s0, -1
sll $s0, $s0, 1
li $s2, 0
la $t0, golden_results
la $t1, results
loop_compare:
beq $s2, $s0, pass
lw $t2, 0($t0)
lw $t3, 0($t1)
addi $t0, $t0, 4
addi $t1, $t1, 4
addi $s2, $s2, 1
bne $t2, $t3, fail
j loop_compare

pass:
la $a0, pass_msg
li $v0, 4
syscall
j end
fail:
la $a0, fail_msg
li $v0, 4
syscall
move $a0, $s2
li $v0, 1
syscall
j end
end:
#-----END------
