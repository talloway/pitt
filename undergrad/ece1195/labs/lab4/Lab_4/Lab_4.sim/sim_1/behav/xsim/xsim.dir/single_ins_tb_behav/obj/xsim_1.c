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
extern void execute_771(char*, char *);
extern void execute_772(char*, char *);
extern void execute_762(char*, char *);
extern void execute_763(char*, char *);
extern void execute_764(char*, char *);
extern void execute_765(char*, char *);
extern void execute_766(char*, char *);
extern void execute_767(char*, char *);
extern void execute_768(char*, char *);
extern void execute_769(char*, char *);
extern void execute_770(char*, char *);
extern void execute_35(char*, char *);
extern void execute_229(char*, char *);
extern void execute_525(char*, char *);
extern void execute_526(char*, char *);
extern void execute_658(char*, char *);
extern void execute_528(char*, char *);
extern void execute_538(char*, char *);
extern void execute_539(char*, char *);
extern void execute_540(char*, char *);
extern void execute_541(char*, char *);
extern void execute_542(char*, char *);
extern void execute_543(char*, char *);
extern void execute_544(char*, char *);
extern void execute_545(char*, char *);
extern void execute_546(char*, char *);
extern void execute_547(char*, char *);
extern void execute_548(char*, char *);
extern void execute_550(char*, char *);
extern void execute_551(char*, char *);
extern void execute_553(char*, char *);
extern void execute_554(char*, char *);
extern void execute_556(char*, char *);
extern void execute_557(char*, char *);
extern void execute_559(char*, char *);
extern void execute_560(char*, char *);
extern void execute_562(char*, char *);
extern void execute_563(char*, char *);
extern void execute_565(char*, char *);
extern void execute_566(char*, char *);
extern void execute_568(char*, char *);
extern void execute_569(char*, char *);
extern void execute_571(char*, char *);
extern void execute_572(char*, char *);
extern void execute_574(char*, char *);
extern void execute_575(char*, char *);
extern void execute_577(char*, char *);
extern void execute_578(char*, char *);
extern void execute_580(char*, char *);
extern void execute_581(char*, char *);
extern void execute_583(char*, char *);
extern void execute_584(char*, char *);
extern void execute_586(char*, char *);
extern void execute_587(char*, char *);
extern void execute_589(char*, char *);
extern void execute_590(char*, char *);
extern void execute_592(char*, char *);
extern void execute_593(char*, char *);
extern void execute_595(char*, char *);
extern void execute_596(char*, char *);
extern void execute_598(char*, char *);
extern void execute_599(char*, char *);
extern void execute_601(char*, char *);
extern void execute_602(char*, char *);
extern void execute_604(char*, char *);
extern void execute_605(char*, char *);
extern void execute_607(char*, char *);
extern void execute_608(char*, char *);
extern void execute_610(char*, char *);
extern void execute_611(char*, char *);
extern void execute_613(char*, char *);
extern void execute_614(char*, char *);
extern void execute_616(char*, char *);
extern void execute_617(char*, char *);
extern void execute_619(char*, char *);
extern void execute_620(char*, char *);
extern void execute_622(char*, char *);
extern void execute_623(char*, char *);
extern void execute_625(char*, char *);
extern void execute_626(char*, char *);
extern void execute_628(char*, char *);
extern void execute_629(char*, char *);
extern void execute_631(char*, char *);
extern void execute_632(char*, char *);
extern void execute_634(char*, char *);
extern void execute_635(char*, char *);
extern void execute_637(char*, char *);
extern void execute_638(char*, char *);
extern void execute_640(char*, char *);
extern void execute_641(char*, char *);
extern void execute_644(char*, char *);
extern void execute_646(char*, char *);
extern void execute_647(char*, char *);
extern void execute_648(char*, char *);
extern void execute_649(char*, char *);
extern void execute_650(char*, char *);
extern void execute_651(char*, char *);
extern void execute_652(char*, char *);
extern void execute_653(char*, char *);
extern void execute_654(char*, char *);
extern void execute_655(char*, char *);
extern void execute_656(char*, char *);
extern void execute_657(char*, char *);
extern void execute_758(char*, char *);
extern void execute_760(char*, char *);
extern void execute_761(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[108] = {(funcp)execute_771, (funcp)execute_772, (funcp)execute_762, (funcp)execute_763, (funcp)execute_764, (funcp)execute_765, (funcp)execute_766, (funcp)execute_767, (funcp)execute_768, (funcp)execute_769, (funcp)execute_770, (funcp)execute_35, (funcp)execute_229, (funcp)execute_525, (funcp)execute_526, (funcp)execute_658, (funcp)execute_528, (funcp)execute_538, (funcp)execute_539, (funcp)execute_540, (funcp)execute_541, (funcp)execute_542, (funcp)execute_543, (funcp)execute_544, (funcp)execute_545, (funcp)execute_546, (funcp)execute_547, (funcp)execute_548, (funcp)execute_550, (funcp)execute_551, (funcp)execute_553, (funcp)execute_554, (funcp)execute_556, (funcp)execute_557, (funcp)execute_559, (funcp)execute_560, (funcp)execute_562, (funcp)execute_563, (funcp)execute_565, (funcp)execute_566, (funcp)execute_568, (funcp)execute_569, (funcp)execute_571, (funcp)execute_572, (funcp)execute_574, (funcp)execute_575, (funcp)execute_577, (funcp)execute_578, (funcp)execute_580, (funcp)execute_581, (funcp)execute_583, (funcp)execute_584, (funcp)execute_586, (funcp)execute_587, (funcp)execute_589, (funcp)execute_590, (funcp)execute_592, (funcp)execute_593, (funcp)execute_595, (funcp)execute_596, (funcp)execute_598, (funcp)execute_599, (funcp)execute_601, (funcp)execute_602, (funcp)execute_604, (funcp)execute_605, (funcp)execute_607, (funcp)execute_608, (funcp)execute_610, (funcp)execute_611, (funcp)execute_613, (funcp)execute_614, (funcp)execute_616, (funcp)execute_617, (funcp)execute_619, (funcp)execute_620, (funcp)execute_622, (funcp)execute_623, (funcp)execute_625, (funcp)execute_626, (funcp)execute_628, (funcp)execute_629, (funcp)execute_631, (funcp)execute_632, (funcp)execute_634, (funcp)execute_635, (funcp)execute_637, (funcp)execute_638, (funcp)execute_640, (funcp)execute_641, (funcp)execute_644, (funcp)execute_646, (funcp)execute_647, (funcp)execute_648, (funcp)execute_649, (funcp)execute_650, (funcp)execute_651, (funcp)execute_652, (funcp)execute_653, (funcp)execute_654, (funcp)execute_655, (funcp)execute_656, (funcp)execute_657, (funcp)execute_758, (funcp)execute_760, (funcp)execute_761, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 108;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/single_ins_tb_behav/xsim.reloc",  (void **)funcTab, 108);
	iki_vhdl_file_variable_register(dp + 32184);
	iki_vhdl_file_variable_register(dp + 32240);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/single_ins_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/single_ins_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/single_ins_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/single_ins_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/single_ins_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
