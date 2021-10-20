/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
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
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
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
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_4(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_9(char*, char *);
IKI_DLLESPEC extern void execute_71(char*, char *);
IKI_DLLESPEC extern void execute_72(char*, char *);
IKI_DLLESPEC extern void execute_73(char*, char *);
IKI_DLLESPEC extern void execute_606(char*, char *);
IKI_DLLESPEC extern void execute_607(char*, char *);
IKI_DLLESPEC extern void execute_608(char*, char *);
IKI_DLLESPEC extern void execute_624(char*, char *);
IKI_DLLESPEC extern void execute_96(char*, char *);
IKI_DLLESPEC extern void execute_625(char*, char *);
IKI_DLLESPEC extern void execute_99(char*, char *);
IKI_DLLESPEC extern void execute_627(char*, char *);
IKI_DLLESPEC extern void execute_628(char*, char *);
IKI_DLLESPEC extern void execute_629(char*, char *);
IKI_DLLESPEC extern void execute_630(char*, char *);
IKI_DLLESPEC extern void execute_626(char*, char *);
IKI_DLLESPEC extern void execute_102(char*, char *);
IKI_DLLESPEC extern void execute_632(char*, char *);
IKI_DLLESPEC extern void execute_633(char*, char *);
IKI_DLLESPEC extern void execute_634(char*, char *);
IKI_DLLESPEC extern void execute_635(char*, char *);
IKI_DLLESPEC extern void execute_636(char*, char *);
IKI_DLLESPEC extern void execute_637(char*, char *);
IKI_DLLESPEC extern void execute_638(char*, char *);
IKI_DLLESPEC extern void execute_639(char*, char *);
IKI_DLLESPEC extern void execute_631(char*, char *);
IKI_DLLESPEC extern void execute_106(char*, char *);
IKI_DLLESPEC extern void execute_107(char*, char *);
IKI_DLLESPEC extern void execute_455(char*, char *);
IKI_DLLESPEC extern void execute_794(char*, char *);
IKI_DLLESPEC extern void execute_795(char*, char *);
IKI_DLLESPEC extern void execute_796(char*, char *);
IKI_DLLESPEC extern void execute_585(char*, char *);
IKI_DLLESPEC extern void execute_586(char*, char *);
IKI_DLLESPEC extern void execute_587(char*, char *);
IKI_DLLESPEC extern void execute_588(char*, char *);
IKI_DLLESPEC extern void execute_935(char*, char *);
IKI_DLLESPEC extern void execute_936(char*, char *);
IKI_DLLESPEC extern void execute_937(char*, char *);
IKI_DLLESPEC extern void execute_938(char*, char *);
IKI_DLLESPEC extern void execute_939(char*, char *);
IKI_DLLESPEC extern void execute_940(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_232(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_236(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_240(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_244(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_248(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_252(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_794(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_798(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_802(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_806(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_810(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_814(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_818(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_822(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_826(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_830(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_834(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_838(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_842(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_846(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_850(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_854(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[70] = {(funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_4, (funcp)execute_5, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_8, (funcp)execute_9, (funcp)execute_71, (funcp)execute_72, (funcp)execute_73, (funcp)execute_606, (funcp)execute_607, (funcp)execute_608, (funcp)execute_624, (funcp)execute_96, (funcp)execute_625, (funcp)execute_99, (funcp)execute_627, (funcp)execute_628, (funcp)execute_629, (funcp)execute_630, (funcp)execute_626, (funcp)execute_102, (funcp)execute_632, (funcp)execute_633, (funcp)execute_634, (funcp)execute_635, (funcp)execute_636, (funcp)execute_637, (funcp)execute_638, (funcp)execute_639, (funcp)execute_631, (funcp)execute_106, (funcp)execute_107, (funcp)execute_455, (funcp)execute_794, (funcp)execute_795, (funcp)execute_796, (funcp)execute_585, (funcp)execute_586, (funcp)execute_587, (funcp)execute_588, (funcp)execute_935, (funcp)execute_936, (funcp)execute_937, (funcp)execute_938, (funcp)execute_939, (funcp)execute_940, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_232, (funcp)transaction_236, (funcp)transaction_240, (funcp)transaction_244, (funcp)transaction_248, (funcp)transaction_252, (funcp)transaction_794, (funcp)transaction_798, (funcp)transaction_802, (funcp)transaction_806, (funcp)transaction_810, (funcp)transaction_814, (funcp)transaction_818, (funcp)transaction_822, (funcp)transaction_826, (funcp)transaction_830, (funcp)transaction_834, (funcp)transaction_838, (funcp)transaction_842, (funcp)transaction_846, (funcp)transaction_850, (funcp)transaction_854};
const int NumRelocateId= 70;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/P8x8_func_synth/xsim.reloc",  (void **)funcTab, 70);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/P8x8_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/P8x8_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/P8x8_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/P8x8_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/P8x8_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
