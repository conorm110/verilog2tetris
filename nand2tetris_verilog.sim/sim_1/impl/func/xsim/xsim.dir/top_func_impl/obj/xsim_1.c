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
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_10(char*, char *);
IKI_DLLESPEC extern void execute_11(char*, char *);
IKI_DLLESPEC extern void execute_18(char*, char *);
IKI_DLLESPEC extern void execute_19(char*, char *);
IKI_DLLESPEC extern void execute_153(char*, char *);
IKI_DLLESPEC extern void execute_660(char*, char *);
IKI_DLLESPEC extern void execute_661(char*, char *);
IKI_DLLESPEC extern void execute_662(char*, char *);
IKI_DLLESPEC extern void execute_663(char*, char *);
IKI_DLLESPEC extern void execute_659(char*, char *);
IKI_DLLESPEC extern void execute_162(char*, char *);
IKI_DLLESPEC extern void execute_163(char*, char *);
IKI_DLLESPEC extern void execute_164(char*, char *);
IKI_DLLESPEC extern void execute_670(char*, char *);
IKI_DLLESPEC extern void execute_671(char*, char *);
IKI_DLLESPEC extern void execute_672(char*, char *);
IKI_DLLESPEC extern void execute_227(char*, char *);
IKI_DLLESPEC extern void execute_719(char*, char *);
IKI_DLLESPEC extern void execute_720(char*, char *);
IKI_DLLESPEC extern void execute_721(char*, char *);
IKI_DLLESPEC extern void execute_722(char*, char *);
IKI_DLLESPEC extern void execute_723(char*, char *);
IKI_DLLESPEC extern void execute_724(char*, char *);
IKI_DLLESPEC extern void execute_725(char*, char *);
IKI_DLLESPEC extern void execute_726(char*, char *);
IKI_DLLESPEC extern void execute_718(char*, char *);
IKI_DLLESPEC extern void execute_1235(char*, char *);
IKI_DLLESPEC extern void execute_508(char*, char *);
IKI_DLLESPEC extern void execute_1236(char*, char *);
IKI_DLLESPEC extern void execute_512(char*, char *);
IKI_DLLESPEC extern void execute_1238(char*, char *);
IKI_DLLESPEC extern void execute_1239(char*, char *);
IKI_DLLESPEC extern void execute_1240(char*, char *);
IKI_DLLESPEC extern void execute_1241(char*, char *);
IKI_DLLESPEC extern void execute_518(char*, char *);
IKI_DLLESPEC extern void execute_1244(char*, char *);
IKI_DLLESPEC extern void execute_1245(char*, char *);
IKI_DLLESPEC extern void execute_1246(char*, char *);
IKI_DLLESPEC extern void execute_620(char*, char *);
IKI_DLLESPEC extern void execute_621(char*, char *);
IKI_DLLESPEC extern void execute_622(char*, char *);
IKI_DLLESPEC extern void execute_623(char*, char *);
IKI_DLLESPEC extern void execute_1331(char*, char *);
IKI_DLLESPEC extern void execute_1332(char*, char *);
IKI_DLLESPEC extern void execute_1333(char*, char *);
IKI_DLLESPEC extern void execute_1334(char*, char *);
IKI_DLLESPEC extern void execute_1335(char*, char *);
IKI_DLLESPEC extern void execute_1336(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_416(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_420(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_424(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_428(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_432(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_436(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_448(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_452(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_456(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_460(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_464(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_472(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_476(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_624(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_628(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_632(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_636(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_640(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_644(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_648(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_652(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_656(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_660(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_664(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_668(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_672(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_676(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_680(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_684(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_832(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_836(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_840(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_844(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_848(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_852(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_856(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_860(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_864(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_868(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_872(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_876(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_880(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_884(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_888(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_892(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_972(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[102] = {(funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_6, (funcp)execute_7, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_10, (funcp)execute_11, (funcp)execute_18, (funcp)execute_19, (funcp)execute_153, (funcp)execute_660, (funcp)execute_661, (funcp)execute_662, (funcp)execute_663, (funcp)execute_659, (funcp)execute_162, (funcp)execute_163, (funcp)execute_164, (funcp)execute_670, (funcp)execute_671, (funcp)execute_672, (funcp)execute_227, (funcp)execute_719, (funcp)execute_720, (funcp)execute_721, (funcp)execute_722, (funcp)execute_723, (funcp)execute_724, (funcp)execute_725, (funcp)execute_726, (funcp)execute_718, (funcp)execute_1235, (funcp)execute_508, (funcp)execute_1236, (funcp)execute_512, (funcp)execute_1238, (funcp)execute_1239, (funcp)execute_1240, (funcp)execute_1241, (funcp)execute_518, (funcp)execute_1244, (funcp)execute_1245, (funcp)execute_1246, (funcp)execute_620, (funcp)execute_621, (funcp)execute_622, (funcp)execute_623, (funcp)execute_1331, (funcp)execute_1332, (funcp)execute_1333, (funcp)execute_1334, (funcp)execute_1335, (funcp)execute_1336, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_416, (funcp)transaction_420, (funcp)transaction_424, (funcp)transaction_428, (funcp)transaction_432, (funcp)transaction_436, (funcp)transaction_440, (funcp)transaction_444, (funcp)transaction_448, (funcp)transaction_452, (funcp)transaction_456, (funcp)transaction_460, (funcp)transaction_464, (funcp)transaction_468, (funcp)transaction_472, (funcp)transaction_476, (funcp)transaction_624, (funcp)transaction_628, (funcp)transaction_632, (funcp)transaction_636, (funcp)transaction_640, (funcp)transaction_644, (funcp)transaction_648, (funcp)transaction_652, (funcp)transaction_656, (funcp)transaction_660, (funcp)transaction_664, (funcp)transaction_668, (funcp)transaction_672, (funcp)transaction_676, (funcp)transaction_680, (funcp)transaction_684, (funcp)transaction_832, (funcp)transaction_836, (funcp)transaction_840, (funcp)transaction_844, (funcp)transaction_848, (funcp)transaction_852, (funcp)transaction_856, (funcp)transaction_860, (funcp)transaction_864, (funcp)transaction_868, (funcp)transaction_872, (funcp)transaction_876, (funcp)transaction_880, (funcp)transaction_884, (funcp)transaction_888, (funcp)transaction_892, (funcp)transaction_972};
const int NumRelocateId= 102;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_func_impl/xsim.reloc",  (void **)funcTab, 102);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_func_impl/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/top_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
