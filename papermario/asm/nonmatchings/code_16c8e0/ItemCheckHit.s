.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel ItemCheckHit
/* 181620 80252D40 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 181624 80252D44 AFB20018 */  sw    $s2, 0x18($sp)
/* 181628 80252D48 0080902D */  daddu $s2, $a0, $zero
/* 18162C 80252D4C AFBF0020 */  sw    $ra, 0x20($sp)
/* 181630 80252D50 AFB3001C */  sw    $s3, 0x1c($sp)
/* 181634 80252D54 AFB10014 */  sw    $s1, 0x14($sp)
/* 181638 80252D58 AFB00010 */  sw    $s0, 0x10($sp)
/* 18163C 80252D5C 8E50000C */  lw    $s0, 0xc($s2)
/* 181640 80252D60 3C11800E */  lui   $s1, 0x800e
/* 181644 80252D64 2631C070 */  addiu $s1, $s1, -0x3f90
/* 181648 80252D68 8E130000 */  lw    $s3, ($s0)
/* 18164C 80252D6C 26100004 */  addiu $s0, $s0, 4
/* 181650 80252D70 8E020000 */  lw    $v0, ($s0)
/* 181654 80252D74 26100004 */  addiu $s0, $s0, 4
/* 181658 80252D78 AE20018C */  sw    $zero, 0x18c($s1)
/* 18165C 80252D7C AE220188 */  sw    $v0, 0x188($s1)
/* 181660 80252D80 8E020000 */  lw    $v0, ($s0)
/* 181664 80252D84 26100004 */  addiu $s0, $s0, 4
/* 181668 80252D88 AE220190 */  sw    $v0, 0x190($s1)
/* 18166C 80252D8C 8E050000 */  lw    $a1, ($s0)
/* 181670 80252D90 0C0B1EAF */  jal   get_variable
/* 181674 80252D94 26100004 */   addiu $s0, $s0, 4
/* 181678 80252D98 A622017E */  sh    $v0, 0x17e($s1)
/* 18167C 80252D9C 8E100000 */  lw    $s0, ($s0)
/* 181680 80252DA0 24020030 */  addiu $v0, $zero, 0x30
/* 181684 80252DA4 32030030 */  andi  $v1, $s0, 0x30
/* 181688 80252DA8 54620004 */  bnel  $v1, $v0, .L80252DBC
/* 18168C 80252DAC 32020010 */   andi  $v0, $s0, 0x10
/* 181690 80252DB0 8E220000 */  lw    $v0, ($s1)
/* 181694 80252DB4 08094B7F */  j     .L80252DFC
/* 181698 80252DB8 34420030 */   ori   $v0, $v0, 0x30

.L80252DBC:
/* 18169C 80252DBC 10400004 */  beqz  $v0, .L80252DD0
/* 1816A0 80252DC0 2403FFDF */   addiu $v1, $zero, -0x21
/* 1816A4 80252DC4 8E220000 */  lw    $v0, ($s1)
/* 1816A8 80252DC8 08094B7E */  j     .L80252DF8
/* 1816AC 80252DCC 34420010 */   ori   $v0, $v0, 0x10

.L80252DD0:
/* 1816B0 80252DD0 32020020 */  andi  $v0, $s0, 0x20
/* 1816B4 80252DD4 10400005 */  beqz  $v0, .L80252DEC
/* 1816B8 80252DD8 2403FFEF */   addiu $v1, $zero, -0x11
/* 1816BC 80252DDC 8E220000 */  lw    $v0, ($s1)
/* 1816C0 80252DE0 00431024 */  and   $v0, $v0, $v1
/* 1816C4 80252DE4 08094B7F */  j     .L80252DFC
/* 1816C8 80252DE8 34420020 */   ori   $v0, $v0, 0x20

.L80252DEC:
/* 1816CC 80252DEC 8E220000 */  lw    $v0, ($s1)
/* 1816D0 80252DF0 00431024 */  and   $v0, $v0, $v1
/* 1816D4 80252DF4 2403FFDF */  addiu $v1, $zero, -0x21
.L80252DF8:
/* 1816D8 80252DF8 00431024 */  and   $v0, $v0, $v1
.L80252DFC:
/* 1816DC 80252DFC AE220000 */  sw    $v0, ($s1)
/* 1816E0 80252E00 32020040 */  andi  $v0, $s0, 0x40
/* 1816E4 80252E04 10400007 */  beqz  $v0, .L80252E24
/* 1816E8 80252E08 2404FFBF */   addiu $a0, $zero, -0x41
/* 1816EC 80252E0C 3C03800E */  lui   $v1, 0x800e
/* 1816F0 80252E10 2463C070 */  addiu $v1, $v1, -0x3f90
/* 1816F4 80252E14 8C620000 */  lw    $v0, ($v1)
/* 1816F8 80252E18 34420040 */  ori   $v0, $v0, 0x40
/* 1816FC 80252E1C 08094B8E */  j     .L80252E38
/* 181700 80252E20 AC620000 */   sw    $v0, ($v1)

.L80252E24:
/* 181704 80252E24 3C02800E */  lui   $v0, 0x800e
/* 181708 80252E28 2442C070 */  addiu $v0, $v0, -0x3f90
/* 18170C 80252E2C 8C430000 */  lw    $v1, ($v0)
/* 181710 80252E30 00641824 */  and   $v1, $v1, $a0
/* 181714 80252E34 AC430000 */  sw    $v1, ($v0)
.L80252E38:
/* 181718 80252E38 32020200 */  andi  $v0, $s0, 0x200
/* 18171C 80252E3C 10400007 */  beqz  $v0, .L80252E5C
/* 181720 80252E40 2404FDFF */   addiu $a0, $zero, -0x201
/* 181724 80252E44 3C03800E */  lui   $v1, 0x800e
/* 181728 80252E48 2463C070 */  addiu $v1, $v1, -0x3f90
/* 18172C 80252E4C 8C620000 */  lw    $v0, ($v1)
/* 181730 80252E50 34420200 */  ori   $v0, $v0, 0x200
/* 181734 80252E54 08094B9C */  j     .L80252E70
/* 181738 80252E58 AC620000 */   sw    $v0, ($v1)

.L80252E5C:
/* 18173C 80252E5C 3C02800E */  lui   $v0, 0x800e
/* 181740 80252E60 2442C070 */  addiu $v0, $v0, -0x3f90
/* 181744 80252E64 8C430000 */  lw    $v1, ($v0)
/* 181748 80252E68 00641824 */  and   $v1, $v1, $a0
/* 18174C 80252E6C AC430000 */  sw    $v1, ($v0)
.L80252E70:
/* 181750 80252E70 32020080 */  andi  $v0, $s0, 0x80
/* 181754 80252E74 10400007 */  beqz  $v0, .L80252E94
/* 181758 80252E78 2404FF7F */   addiu $a0, $zero, -0x81
/* 18175C 80252E7C 3C03800E */  lui   $v1, 0x800e
/* 181760 80252E80 2463C070 */  addiu $v1, $v1, -0x3f90
/* 181764 80252E84 8C620000 */  lw    $v0, ($v1)
/* 181768 80252E88 34420080 */  ori   $v0, $v0, 0x80
/* 18176C 80252E8C 08094BAA */  j     .L80252EA8
/* 181770 80252E90 AC620000 */   sw    $v0, ($v1)

.L80252E94:
/* 181774 80252E94 3C02800E */  lui   $v0, 0x800e
/* 181778 80252E98 2442C070 */  addiu $v0, $v0, -0x3f90
/* 18177C 80252E9C 8C430000 */  lw    $v1, ($v0)
/* 181780 80252EA0 00641824 */  and   $v1, $v1, $a0
/* 181784 80252EA4 AC430000 */  sw    $v1, ($v0)
.L80252EA8:
/* 181788 80252EA8 0C09A75B */  jal   get_actor
/* 18178C 80252EAC 8E440148 */   lw    $a0, 0x148($s2)
/* 181790 80252EB0 94430428 */  lhu   $v1, 0x428($v0)
/* 181794 80252EB4 A62301A0 */  sh    $v1, 0x1a0($s1)
/* 181798 80252EB8 92230193 */  lbu   $v1, 0x193($s1)
/* 18179C 80252EBC 90420426 */  lbu   $v0, 0x426($v0)
/* 1817A0 80252EC0 A2230194 */  sb    $v1, 0x194($s1)
/* 1817A4 80252EC4 306300FF */  andi  $v1, $v1, 0xff
/* 1817A8 80252EC8 A22201A2 */  sb    $v0, 0x1a2($s1)
/* 1817AC 80252ECC 240200FF */  addiu $v0, $zero, 0xff
/* 1817B0 80252ED0 50620001 */  beql  $v1, $v0, .L80252ED8
/* 1817B4 80252ED4 A2200194 */   sb    $zero, 0x194($s1)
.L80252ED8:
/* 1817B8 80252ED8 8E220190 */  lw    $v0, 0x190($s1)
/* 1817BC 80252EDC 30420F00 */  andi  $v0, $v0, 0xf00
/* 1817C0 80252EE0 00021203 */  sra   $v0, $v0, 8
/* 1817C4 80252EE4 0C094574 */  jal   calc_item_check_hit
/* 1817C8 80252EE8 A2220195 */   sb    $v0, 0x195($s1)
/* 1817CC 80252EEC 04400006 */  bltz  $v0, .L80252F08
/* 1817D0 80252EF0 0240202D */   daddu $a0, $s2, $zero
/* 1817D4 80252EF4 0260282D */  daddu $a1, $s3, $zero
/* 1817D8 80252EF8 0C0B2026 */  jal   set_variable
/* 1817DC 80252EFC 0040302D */   daddu $a2, $v0, $zero
/* 1817E0 80252F00 08094BC3 */  j     .L80252F0C
/* 1817E4 80252F04 24020002 */   addiu $v0, $zero, 2

.L80252F08:
/* 1817E8 80252F08 240200FF */  addiu $v0, $zero, 0xff
.L80252F0C:
/* 1817EC 80252F0C 8FBF0020 */  lw    $ra, 0x20($sp)
/* 1817F0 80252F10 8FB3001C */  lw    $s3, 0x1c($sp)
/* 1817F4 80252F14 8FB20018 */  lw    $s2, 0x18($sp)
/* 1817F8 80252F18 8FB10014 */  lw    $s1, 0x14($sp)
/* 1817FC 80252F1C 8FB00010 */  lw    $s0, 0x10($sp)
/* 181800 80252F20 03E00008 */  jr    $ra
/* 181804 80252F24 27BD0028 */   addiu $sp, $sp, 0x28

/* 181808 80252F28 00000000 */  nop   
/* 18180C 80252F2C 00000000 */  nop   