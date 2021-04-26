/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_767(char*, char *);
extern void execute_768(char*, char *);
extern void execute_765(char*, char *);
extern void execute_766(char*, char *);
extern void execute_15(char*, char *);
extern void execute_207(char*, char *);
extern void execute_465(char*, char *);
extern void execute_210(char*, char *);
extern void execute_211(char*, char *);
extern void execute_661(char*, char *);
extern void execute_761(char*, char *);
extern void execute_763(char*, char *);
extern void execute_764(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[15] = {(funcp)execute_767, (funcp)execute_768, (funcp)execute_765, (funcp)execute_766, (funcp)execute_15, (funcp)execute_207, (funcp)execute_465, (funcp)execute_210, (funcp)execute_211, (funcp)execute_661, (funcp)execute_761, (funcp)execute_763, (funcp)execute_764, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_4};
const int NumRelocateId= 15;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/mult_tb_behav/xsim.reloc",  (void **)funcTab, 15);
	iki_vhdl_file_variable_register(dp + 21744);
	iki_vhdl_file_variable_register(dp + 21800);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/mult_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/mult_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/mult_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/mult_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/mult_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
