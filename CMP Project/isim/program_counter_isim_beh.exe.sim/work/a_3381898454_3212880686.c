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
static const char *ng0 = "C:/Users/Sachintha/Desktop/processer design MP/Final Processer MP/FinalMp/PROG_COUN.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3381898454_3212880686_p_0(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    static char *nl0[] = {&&LAB8, &&LAB9, &&LAB10, &&LAB11};

LAB0:    xsi_set_current_line(25, ng0);
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
LAB3:    t1 = (t0 + 3560);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 3656);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(27, ng0);
    t1 = (t0 + 6274);
    t5 = (t0 + 3720);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 2U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(32, ng0);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t10 = *((unsigned char *)t7);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB13:    goto LAB7;

LAB9:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB18:    goto LAB7;

LAB10:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB23:    goto LAB7;

LAB11:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3720);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 2U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB28:    goto LAB7;

LAB12:    xsi_set_current_line(33, ng0);
    t6 = (t0 + 1672U);
    t8 = *((char **)t6);
    t6 = (t0 + 6244U);
    t9 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t8, t6, 1);
    t13 = (t12 + 12U);
    t14 = *((unsigned int *)t13);
    t15 = (1U * t14);
    t16 = (2U != t15);
    if (t16 == 1)
        goto LAB15;

LAB16:    t17 = (t0 + 3720);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t9, 2U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB15:    xsi_size_not_matching(2U, t15, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 6244U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t5, t1, 1);
    t7 = (t12 + 12U);
    t14 = *((unsigned int *)t7);
    t15 = (1U * t14);
    t10 = (2U != t15);
    if (t10 == 1)
        goto LAB20;

LAB21:    t8 = (t0 + 3720);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 2U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    xsi_size_not_matching(2U, t15, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 6244U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t5, t1, 1);
    t7 = (t12 + 12U);
    t14 = *((unsigned int *)t7);
    t15 = (1U * t14);
    t10 = (2U != t15);
    if (t10 == 1)
        goto LAB25;

LAB26:    t8 = (t0 + 3720);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 2U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB23;

LAB25:    xsi_size_not_matching(2U, t15, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t1 = (t0 + 6244U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t5, t1, 1);
    t7 = (t12 + 12U);
    t14 = *((unsigned int *)t7);
    t15 = (1U * t14);
    t10 = (2U != t15);
    if (t10 == 1)
        goto LAB30;

LAB31:    t8 = (t0 + 3720);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 2U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3656);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB28;

LAB30:    xsi_size_not_matching(2U, t15, 0);
    goto LAB31;

}

static void work_a_3381898454_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(80, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3784);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3576);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3381898454_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3381898454_3212880686_p_0,(void *)work_a_3381898454_3212880686_p_1};
	xsi_register_didat("work_a_3381898454_3212880686", "isim/program_counter_isim_beh.exe.sim/work/a_3381898454_3212880686.didat");
	xsi_register_executes(pe);
}
