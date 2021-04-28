/** Code by @author Wonsun Ahn
 * 
 * Implements the five stages of the processor pipeline.  The code you will be
 * modifying mainly.
 */

#include <inttypes.h>
#include <assert.h>
#include "CPU.h"
#include "trace.h"

unsigned int cycle_number = 0;
unsigned int inst_number = 0;

std::deque<dynamic_inst> IF, ID, WB;
dynamic_inst EX_ALU = {0}, MEM_ALU = {0};
dynamic_inst EX_lwsw = {0}, MEM_lwsw = {0};

bool is_ALU(dynamic_inst dinst) {
  instruction inst = dinst.inst;
  return inst.type != ti_NOP && inst.type != ti_LOAD && inst.type != ti_STORE;
}

bool is_lwsw(dynamic_inst dinst) {
  instruction inst = dinst.inst;
  return inst.type == ti_LOAD || inst.type == ti_STORE;
}

bool is_NOP(dynamic_inst dinst) {
  instruction inst = dinst.inst;
  return inst.type == ti_NOP;
}

bool is_older(dynamic_inst dinst1, dynamic_inst dinst2) {
  return is_NOP(dinst2) || (!is_NOP(dinst1) && dinst1.seq < dinst2.seq);
}

dynamic_inst get_NOP() {
  dynamic_inst dinst = {0};
  return dinst;
}

bool is_finished()
{
  /* Finished when pipeline is completely empty */
  if (IF.size() > 0 || ID.size() > 0) return 0;
  if (!is_NOP(EX_ALU) || !is_NOP(MEM_ALU) || !is_NOP(EX_lwsw) || !is_NOP(MEM_lwsw)) {
    return 0;
  }
  return 1;
}

bool is_load(dynamic_inst dinst) {
  if (dinst.inst.type == ti_LOAD) {
    return 1;
  }
  return 0;
}

// Helper method to determine if instruction uses the destination Reg and writes back to register
bool isAWriteBackInstr(dynamic_inst dinst)
{
	unsigned char type = dinst.inst.type;
	if(type == ti_RTYPE || type == ti_ITYPE || type == ti_LOAD) 
		return 1;
	
	return 0;
}

// Helper method to detemine if register is used in the instruction type
// dinst - Intruction to check
// reg - 1 to check reg a and 2 to check reg b
bool regUsed(dynamic_inst dinst, int reg)
{
	if(dinst.inst.type == ti_RTYPE || dinst.inst.type == ti_STORE || dinst.inst.type == ti_BRANCH)
		return 1;
	else if(dinst.inst.type == ti_ITYPE || dinst.inst.type == ti_LOAD || dinst.inst.type == ti_JRTYPE)
	{
		if(reg == 1)
			return 1;
		else
			return 0;
	}
	
	return 0;
}

bool has_raw_hazard(dynamic_inst dinst) {
  unsigned char reg_a = dinst.inst.sReg_a;
  unsigned char reg_b = dinst.inst.sReg_b;

  unsigned char ex_alu_dst = EX_ALU.inst.dReg;
  unsigned char ex_lwsw_dst = EX_lwsw.inst.dReg;
  unsigned char mem_alu_dst = MEM_ALU.inst.dReg;
  unsigned char mem_lwsw_dst = MEM_lwsw.inst.dReg;
  unsigned char wb_0_dst = WB[0].inst.dReg;
  unsigned char wb_1_dst = WB[1].inst.dReg;

  if (regUsed(dinst,1) &&
      ((reg_a == ex_alu_dst && isAWriteBackInstr(EX_ALU))         || 
       (reg_a == ex_lwsw_dst && isAWriteBackInstr(EX_lwsw))       || 
       (reg_a == mem_alu_dst && isAWriteBackInstr(MEM_ALU))       ||
       (reg_a == mem_lwsw_dst && isAWriteBackInstr(MEM_lwsw))     || 
       (reg_a == wb_0_dst && isAWriteBackInstr(WB[0]))  || 
       (reg_a == wb_1_dst&& isAWriteBackInstr(WB[1]))   )) 
  {
    return 1;
  }

  if (regUsed(dinst,2) &&
      ((reg_b == ex_alu_dst && isAWriteBackInstr(EX_ALU))         || 
       (reg_b == ex_lwsw_dst && isAWriteBackInstr(EX_lwsw))       || 
       (reg_b == mem_alu_dst && isAWriteBackInstr(MEM_ALU))       ||
       (reg_b == mem_lwsw_dst && isAWriteBackInstr(MEM_lwsw))     || 
       (reg_b == wb_0_dst && isAWriteBackInstr(WB[0]))  || 
       (reg_b == wb_1_dst&& isAWriteBackInstr(WB[1]))   )) 
  {
    return 1;
  }

  return 0;
}

bool has_raw_hazard_back(dynamic_inst dinst1, dynamic_inst dinst2) {
    unsigned char reg_a = dinst1.inst.sReg_a;
    unsigned char reg_b = dinst1.inst.sReg_b;

    unsigned char front_dst = dinst2.inst.dReg;

    if (has_raw_hazard(dinst1)) {
      return 1;
    }

    if ( isAWriteBackInstr(dinst2) &&
      ((regUsed(dinst1,1) && reg_a == front_dst) || 
      (regUsed(dinst1,2) && reg_b == front_dst)) )
	{
      return 1;
    }

    return 0;
}

bool has_waw_hazard(dynamic_inst dinst1, dynamic_inst dinst2) {
  unsigned char dReg_1 = dinst1.inst.dReg;
  unsigned char dReg_2 = dinst2.inst.dReg;
  
  if(!isAWriteBackInstr(dinst1) || !isAWriteBackInstr(dinst2)) {
    return 0;
  }

  if (dReg_1 == dReg_2 && dReg_1) {
    return 1;
  }

  return 0;
}

bool has_control_hazard() {
  unsigned int increment = 4;

  if (config->pipelineWidth == 1 &&
      ((ID.size() > 0 && ID[0].inst.type == ti_BRANCH && ID[0].inst.Addr != ID[0].inst.PC + increment) ||
      (EX_ALU.inst.type == ti_BRANCH && EX_ALU.inst.Addr != EX_ALU.inst.PC + increment))) {
      return 1;
  }

  if (config->pipelineWidth == 2 &&
      ((ID.size() > 0 && ID[0].inst.type == ti_BRANCH && ID[0].inst.Addr != ID[0].inst.PC + increment) ||
      (ID.size() > 1 && ID[1].inst.type == ti_BRANCH && ID[1].inst.Addr != ID[1].inst.PC + increment) || 
      (EX_ALU.inst.type == ti_BRANCH && EX_ALU.inst.Addr != EX_ALU.inst.PC + increment))) {
    return 1;
  } 

  return 0;
}

bool has_control_hazard_back(dynamic_inst dinst) {
  unsigned int increment = 4;

  if (dinst.inst.type == ti_BRANCH && dinst.inst.Addr != dinst.inst.PC + increment) {
    return 1;
  }
  return 0;
}

bool has_struct2_hazard() {
	if (!is_NOP(MEM_ALU) && is_load(MEM_lwsw) && (config->pipelineWidth > 1 && config->regFileWritePorts == 1))
		return 1;
	
	return 0;
}

bool has_use_after_load(dynamic_inst dinst) {
  if (EX_lwsw.inst.type == ti_LOAD && ((regUsed(dinst,1) && EX_lwsw.inst.dReg == dinst.inst.sReg_a) ||(regUsed(dinst,2) && EX_lwsw.inst.dReg == dinst.inst.sReg_b))) {
    return 1;
  }
  
  if (MEM_lwsw.inst.type == ti_LOAD && ((regUsed(dinst,1) && MEM_lwsw.inst.dReg == dinst.inst.sReg_a) ||(regUsed(dinst,2) && MEM_lwsw.inst.dReg == dinst.inst.sReg_b))) {
    return 1;
  }

  return 0;
}

bool has_control_hazard_opt() {
  return 0;
}

bool has_corner_case_store(dynamic_inst dinst) {
  if (dinst.inst.type == ti_STORE && (EX_ALU.inst.type == ti_RTYPE || EX_ALU.inst.type == ti_ITYPE) && (EX_ALU.inst.dReg == dinst.inst.sReg_a || EX_ALU.inst.dReg == dinst.inst.sReg_b)) {
    return 1;
  }

  return 0;
}

bool has_corner_case_load(dynamic_inst dinst) {
  if (dinst.inst.type == ti_LOAD && (EX_ALU.inst.type == ti_RTYPE || EX_ALU.inst.type == ti_ITYPE) && (EX_ALU.inst.dReg == dinst.inst.sReg_a || EX_ALU.inst.dReg == dinst.inst.sReg_b)) {
    return 1;
  }

  return 0;
}

int writeback()
{
  static unsigned int cur_seq = 1;

  WB.clear();
  
  // STRUCTURAL HAZARD 2 (2 wide w/ 1 reg write port)
  //    If only one regFileWritePort, then both writes can not happen at same time
  //    Write the older instr and stall the other.
  // WAW HAZARD (2 wide)
  //    When both instructions (2 wide) try to write to the same destination register.
  //    Write the older instr and stall the other.
  if (MEM_ALU.inst.type != ti_JTYPE && MEM_ALU.inst.type != ti_JRTYPE && ((config->regFileWritePorts == 1 && has_struct2_hazard()) || 
	  (has_waw_hazard(MEM_ALU, MEM_lwsw)))) {
    if (is_older(MEM_ALU, MEM_lwsw)) {
      WB.push_back(MEM_ALU);
      MEM_ALU = get_NOP();
    }
    else {
      WB.push_back(MEM_lwsw);
      MEM_lwsw = get_NOP();
    }
    WB.push_back(get_NOP());
  }
  else {
    if (is_older(MEM_ALU, MEM_lwsw)) {
      WB.push_back(MEM_ALU);
      MEM_ALU = get_NOP();
      WB.push_back(MEM_lwsw);
      MEM_lwsw = get_NOP();
    }
    else {
      WB.push_back(MEM_lwsw);
      MEM_lwsw = get_NOP();
      WB.push_back(MEM_ALU);
      MEM_ALU = get_NOP();
    }
  }

  if (verbose) {/* print the instruction exiting the pipeline if verbose=1 */
    for (int i = 0; i < (int) WB.size(); i++) {
      printf("[%d: WB] %s\n", cycle_number, get_instruction_string(WB[i], true));
      if(!is_NOP(WB[i])) {
        if(config->pipelineWidth > 1 && config->regFileWritePorts == 1) {
          // There is a corner case where an instruction without a
          // destination register can get pulled in out of sequence but
          // other than that, it should be strictly in-order.
        } else {
          assert(WB[i].seq == cur_seq);
        }
        cur_seq++;
      }
    }
  }
  return WB.size();
}

int memory()
{
  int insts = 0;
  if (is_NOP(MEM_ALU)) {
    MEM_ALU = EX_ALU;
    EX_ALU = get_NOP();
    insts++;
  }
  if (is_NOP(MEM_lwsw)) {
    MEM_lwsw = EX_lwsw;
    EX_lwsw = get_NOP();
    insts++;
  }
  return insts;
}

int issue()
{
  /* in-order issue */
  int insts = 0;
  while (ID.size() > 0) {
    if (is_ALU(ID.front())) {
      if (!is_NOP(EX_ALU) || has_use_after_load(ID.front())) {
        break;;
      }
      EX_ALU = ID.front();
      ID.pop_front();
    } else if (is_lwsw(ID.front())) {
      if (!is_NOP(EX_lwsw) || has_use_after_load(ID.front()) || (config->pipelineWidth == 2 && has_corner_case_store(ID.front())) || (config->pipelineWidth == 2 && has_corner_case_load(ID.front()))) {
        break;;
      }
      EX_lwsw = ID.front();
      ID.pop_front();
    } else {
      assert(0);
    }
    insts++;
  }
  return insts;
}

int decode()
{
  int insts = 0;
 
    if (config->enableForwarding == false && (int)ID.size() > 0 && has_raw_hazard_back(IF.front(), ID.back())) {
      return insts;
    }

  while ((int)IF.size() > 0 && (int)ID.size() < config->pipelineWidth) {
   
    // DATA HAZARD 1 - RAW dependencies
    if (config->enableForwarding == false && has_raw_hazard(IF.front())) {
      break;
    }

    // If 2-wide, check if back instruction has raw with front instruction
    if ((config->enableForwarding == false && config->pipelineWidth > 1) && has_raw_hazard_back(IF.back(), IF.front())) {
      ID.push_back(IF.front());
      IF.pop_front();
      insts++;
      break;
    }

    ID.push_back(IF.front());
    IF.pop_front();
    insts++;
  }
  return insts;
}

int fetch()
{
  static unsigned int cur_seq = 1;
  int insts = 0;
  dynamic_inst dinst;
  instruction *tr_entry = NULL;

  /* copy trace entry(s) into IF stage */
  while((int)IF.size() < config->pipelineWidth) {
	  
	  // STRUCTURAL HAZARD 1 - Memory read ports
    if (config->splitCaches == false && is_load(MEM_lwsw)) {
      break;
    }

    
    // CONTROL HAZARD 1 - Taken branches
    if (config -> branchTargetBuffer == false) {
      if (config->pipelineWidth == 2 && IF.size() == 2 && !is_NOP(IF.back()) && has_control_hazard_back(IF.back())) {
        break;
      }
      else if (IF.size() > 0 && !is_NOP(IF.front()) && has_control_hazard_back(IF.front())) {
        break;
      }
      else if (has_control_hazard()) {
        break;
      }
    }

    else if (IF.size() > 0 && !is_NOP(IF.front()) && has_control_hazard_back(IF.front())) {
      break;
    }

    size_t size = trace_get_item(&tr_entry); /* put the instruction into a buffer */
    if (size > 0) {
      dinst.inst = *tr_entry;
      dinst.seq = cur_seq++;
      IF.push_back(dinst);
      insts++;
    } else {
      break;
    }
    if (verbose) {/* print the instruction entering the pipeline if verbose=1 */
      printf("[%d: IF] %s\n", cycle_number, get_instruction_string(IF.back(), true));
    }
  }
  inst_number += insts;
  return insts;
}

