.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240050_B598C0
/* B598C0 80240050 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* B598C4 80240054 AFB20028 */  sw        $s2, 0x28($sp)
/* B598C8 80240058 0080902D */  daddu     $s2, $a0, $zero
/* B598CC 8024005C AFBF002C */  sw        $ra, 0x2c($sp)
/* B598D0 80240060 AFB10024 */  sw        $s1, 0x24($sp)
/* B598D4 80240064 AFB00020 */  sw        $s0, 0x20($sp)
/* B598D8 80240068 8E500148 */  lw        $s0, 0x148($s2)
/* B598DC 8024006C 0C00EABB */  jal       get_npc_unsafe
/* B598E0 80240070 86040008 */   lh       $a0, 8($s0)
/* B598E4 80240074 8E03006C */  lw        $v1, 0x6c($s0)
/* B598E8 80240078 1460000B */  bnez      $v1, .L802400A8
/* B598EC 8024007C 0040882D */   daddu    $s1, $v0, $zero
/* B598F0 80240080 0C00A67F */  jal       rand_int
/* B598F4 80240084 24040064 */   addiu    $a0, $zero, 0x64
/* B598F8 80240088 28420032 */  slti      $v0, $v0, 0x32
/* B598FC 8024008C 14400002 */  bnez      $v0, .L80240098
/* B59900 80240090 24020001 */   addiu    $v0, $zero, 1
/* B59904 80240094 24020003 */  addiu     $v0, $zero, 3
.L80240098:
/* B59908 80240098 AE02006C */  sw        $v0, 0x6c($s0)
/* B5990C 8024009C 3C054387 */  lui       $a1, 0x4387
/* B59910 802400A0 0C00ECD0 */  jal       set_npc_yaw
/* B59914 802400A4 0220202D */   daddu    $a0, $s1, $zero
.L802400A8:
/* B59918 802400A8 8E02006C */  lw        $v0, 0x6c($s0)
/* B5991C 802400AC 2443FFFF */  addiu     $v1, $v0, -1
/* B59920 802400B0 2C620006 */  sltiu     $v0, $v1, 6
/* B59924 802400B4 1040004D */  beqz      $v0, .L802401EC
/* B59928 802400B8 00031080 */   sll      $v0, $v1, 2
/* B5992C 802400BC 3C018024 */  lui       $at, 0x8024
/* B59930 802400C0 00220821 */  addu      $at, $at, $v0
/* B59934 802400C4 8C224700 */  lw        $v0, 0x4700($at)
/* B59938 802400C8 00400008 */  jr        $v0
/* B5993C 802400CC 00000000 */   nop      
/* B59940 802400D0 3C030042 */  lui       $v1, 0x42
/* B59944 802400D4 3463000F */  ori       $v1, $v1, 0xf
/* B59948 802400D8 24020002 */  addiu     $v0, $zero, 2
/* B5994C 802400DC AE02006C */  sw        $v0, 0x6c($s0)
/* B59950 802400E0 AE000070 */  sw        $zero, 0x70($s0)
/* B59954 802400E4 AE230028 */  sw        $v1, 0x28($s1)
/* B59958 802400E8 8E020070 */  lw        $v0, 0x70($s0)
/* B5995C 802400EC 24420001 */  addiu     $v0, $v0, 1
/* B59960 802400F0 AE020070 */  sw        $v0, 0x70($s0)
/* B59964 802400F4 28420033 */  slti      $v0, $v0, 0x33
/* B59968 802400F8 1440003C */  bnez      $v0, .L802401EC
/* B5996C 802400FC 24020005 */   addiu    $v0, $zero, 5
/* B59970 80240100 0809007B */  j         .L802401EC
/* B59974 80240104 AE02006C */   sw       $v0, 0x6c($s0)
/* B59978 80240108 3C030042 */  lui       $v1, 0x42
/* B5997C 8024010C 34630010 */  ori       $v1, $v1, 0x10
/* B59980 80240110 24020004 */  addiu     $v0, $zero, 4
/* B59984 80240114 AE02006C */  sw        $v0, 0x6c($s0)
/* B59988 80240118 AE000070 */  sw        $zero, 0x70($s0)
/* B5998C 8024011C AE230028 */  sw        $v1, 0x28($s1)
/* B59990 80240120 8E020070 */  lw        $v0, 0x70($s0)
/* B59994 80240124 24030019 */  addiu     $v1, $zero, 0x19
/* B59998 80240128 24420001 */  addiu     $v0, $v0, 1
/* B5999C 8024012C 14430005 */  bne       $v0, $v1, .L80240144
/* B599A0 80240130 AE020070 */   sw       $v0, 0x70($s0)
/* B599A4 80240134 3C0142B4 */  lui       $at, 0x42b4
/* B599A8 80240138 44810000 */  mtc1      $at, $f0
/* B599AC 8024013C 00000000 */  nop       
/* B599B0 80240140 E620000C */  swc1      $f0, 0xc($s1)
.L80240144:
/* B599B4 80240144 8E020070 */  lw        $v0, 0x70($s0)
/* B599B8 80240148 2842003D */  slti      $v0, $v0, 0x3d
/* B599BC 8024014C 14400027 */  bnez      $v0, .L802401EC
/* B599C0 80240150 24020005 */   addiu    $v0, $zero, 5
/* B599C4 80240154 0809007B */  j         .L802401EC
/* B599C8 80240158 AE02006C */   sw       $v0, 0x6c($s0)
/* B599CC 8024015C 3C030042 */  lui       $v1, 0x42
/* B599D0 80240160 24020006 */  addiu     $v0, $zero, 6
/* B599D4 80240164 34630003 */  ori       $v1, $v1, 3
/* B599D8 80240168 AE02006C */  sw        $v0, 0x6c($s0)
/* B599DC 8024016C AE000070 */  sw        $zero, 0x70($s0)
/* B599E0 80240170 862400A8 */  lh        $a0, 0xa8($s1)
/* B599E4 80240174 2402000A */  addiu     $v0, $zero, 0xa
/* B599E8 80240178 AE230028 */  sw        $v1, 0x28($s1)
/* B599EC 8024017C AFA00014 */  sw        $zero, 0x14($sp)
/* B599F0 80240180 AFA20018 */  sw        $v0, 0x18($sp)
/* B599F4 80240184 44840000 */  mtc1      $a0, $f0
/* B599F8 80240188 00000000 */  nop       
/* B599FC 8024018C 46800020 */  cvt.s.w   $f0, $f0
/* B59A00 80240190 E7A00010 */  swc1      $f0, 0x10($sp)
/* B59A04 80240194 8E250038 */  lw        $a1, 0x38($s1)
/* B59A08 80240198 8E26003C */  lw        $a2, 0x3c($s1)
/* B59A0C 8024019C 8E270040 */  lw        $a3, 0x40($s1)
/* B59A10 802401A0 0C01C1E4 */  jal       fx_sweat
/* B59A14 802401A4 0000202D */   daddu    $a0, $zero, $zero
/* B59A18 802401A8 8E020070 */  lw        $v0, 0x70($s0)
/* B59A1C 802401AC 24420001 */  addiu     $v0, $v0, 1
/* B59A20 802401B0 AE020070 */  sw        $v0, 0x70($s0)
/* B59A24 802401B4 2842000B */  slti      $v0, $v0, 0xb
/* B59A28 802401B8 1440000C */  bnez      $v0, .L802401EC
/* B59A2C 802401BC 00000000 */   nop      
/* B59A30 802401C0 0C00A67F */  jal       rand_int
/* B59A34 802401C4 24040064 */   addiu    $a0, $zero, 0x64
/* B59A38 802401C8 0040182D */  daddu     $v1, $v0, $zero
/* B59A3C 802401CC 2862005A */  slti      $v0, $v1, 0x5a
/* B59A40 802401D0 14400005 */  bnez      $v0, .L802401E8
/* B59A44 802401D4 24020007 */   addiu    $v0, $zero, 7
/* B59A48 802401D8 2862005F */  slti      $v0, $v1, 0x5f
/* B59A4C 802401DC 14400002 */  bnez      $v0, .L802401E8
/* B59A50 802401E0 24020001 */   addiu    $v0, $zero, 1
/* B59A54 802401E4 24020003 */  addiu     $v0, $zero, 3
.L802401E8:
/* B59A58 802401E8 AE02006C */  sw        $v0, 0x6c($s0)
.L802401EC:
/* B59A5C 802401EC 8E03006C */  lw        $v1, 0x6c($s0)
/* B59A60 802401F0 24020007 */  addiu     $v0, $zero, 7
/* B59A64 802401F4 50620001 */  beql      $v1, $v0, .L802401FC
/* B59A68 802401F8 AE400070 */   sw       $zero, 0x70($s2)
.L802401FC:
/* B59A6C 802401FC 8FBF002C */  lw        $ra, 0x2c($sp)
/* B59A70 80240200 8FB20028 */  lw        $s2, 0x28($sp)
/* B59A74 80240204 8FB10024 */  lw        $s1, 0x24($sp)
/* B59A78 80240208 8FB00020 */  lw        $s0, 0x20($sp)
/* B59A7C 8024020C 03E00008 */  jr        $ra
/* B59A80 80240210 27BD0030 */   addiu    $sp, $sp, 0x30
