/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Sachintha/Desktop/OUSL/2023/EEX7436 Process design/processer design MP/Final Processer MP/FinalMp/COMPERATOR.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2683404259_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 3872);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 6744U);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t6 = (t0 + 6712U);
    t10 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t5, t2, t7, t6);
    if (t10 == 1)
        goto LAB13;

LAB14:    t9 = (unsigned char)0;

LAB15:    if (t9 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3872);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(48, ng0);
    t26 = (t0 + 3872);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t26);
    goto LAB8;

LAB10:    t16 = (t0 + 1992U);
    t17 = *((char **)t16);
    t16 = (t0 + 6776U);
    t18 = (t0 + 1512U);
    t19 = *((char **)t18);
    t18 = (t0 + 6728U);
    t20 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t17, t16, t19, t18);
    if (t20 == 1)
        goto LAB16;

LAB17:    t15 = (unsigned char)0;

LAB18:    t4 = t15;
    goto LAB12;

LAB13:    t8 = (t0 + 1352U);
    t11 = *((char **)t8);
    t8 = (t0 + 6712U);
    t12 = (t0 + 1832U);
    t13 = *((char **)t12);
    t12 = (t0 + 6760U);
    t14 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t11, t8, t13, t12);
    t9 = t14;
    goto LAB15;

LAB16:    t21 = (t0 + 1512U);
    t22 = *((char **)t21);
    t21 = (t0 + 6728U);
    t23 = (t0 + 2152U);
    t24 = *((char **)t23);
    t23 = (t0 + 6792U);
    t25 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t22, t21, t24, t23);
    t15 = t25;
    goto LAB18;

}


extern void work_a_2683404259_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2683404259_3212880686_p_0};
	xsi_register_didat("work_a_2683404259_3212880686", "isim/CMP_isim_beh.exe.sim/work/a_2683404259_3212880686.didat");
	xsi_register_executes(pe);
}
