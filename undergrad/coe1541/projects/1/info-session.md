# Project 1 Information Session

### 1a: What is the syntax for inserting a bubble/NOP?
- We only modify CPU.c
- In each stage, the pipeline pulls forward the instructions in the previous stage. The previous stage then gets a NOP to signify that it is ready to have instructions pulled forward into it (meaning the current stage should have a NOP to pull things forward). But, if there is not already a NOP in the current stage, that means there has been a stall, so you break out of the loop.

### 1b: Is there a case where you would directly insert a NOP, instead of just stalling for a stage?
- There is a structural hazard in the WB stage that we might have to handle, which is when a LOAD instruction and an ALU instruction both attempt to write to the register file. This creates a structural hazard on the write port, **if there is only one**. In that case, you'd do `WB.push_back(get_NOP());`. There is no reason to manually insert a NOP in the preceding stages because those stages will see the one in the WB stage.

### 2: Can you explain the code?
- `five_stage.c`: Each iteration of the `while` loop in the main function is one pipeline cycle. We get values in the previous latch and store them in the next one. We do this in reverse order to account for stalls.
- `CPU.c`: 
		- `writeback()`: Move instructions from the MEM stage into the WB stage depending on which is older, to maintain order in the instructions.
		- `memory()`: There should be NOPs now in the MEM stage, if there hasn't been any stalls at WB. We are free to fill in the NOPs, if they are there, by getting stuff from EX stage. We then put in corresponding NOPs in the EX stage.
		- `issue()`: Only process the instructions if EX is a NOP, otherwise break out of the loop.
		- `decode()`: ID is like a queue. We check whether the queue size is less than the pipeline width; if not, then decode can't proceed (there are too many instructions being decoded at once). If there is still room for instructions, we get them from the front of the IF queue.
		- `fetch()`: Basically the same thing as `decode()`.

### 3: Why do you do `insts++` in each method?
The `insts++` part isn't relevant to us. It just counts how many instructions have been processed during each stage.

### 4: What is `pop_front`?
`Pop_front` and `push_back` are just the queue operations we are using. It keeps the instructions in order to do it this way.

### 5: How do you tell between stores and loads?
This is related to the first structural hazard we have to implement, where we insert a bubble at the IF stage if a load instruction is at the MEM stage. Throughout the program, we see instances of the `dynamic_inst` type. This is a struct with the field `instruction`. `instruction` is a struct itself with field `type`. `type` tells you what type of instruction it is. For this structural hazard, it might be useful to have a helper method `is_load()` to check this.