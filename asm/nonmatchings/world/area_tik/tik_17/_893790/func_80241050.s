.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241050
/* 893A70 80241050 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 893A74 80241054 AFB00010 */  sw        $s0, 0x10($sp)
/* 893A78 80241058 0080802D */  daddu     $s0, $a0, $zero
/* 893A7C 8024105C AFBF0014 */  sw        $ra, 0x14($sp)
/* 893A80 80241060 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 893A84 80241064 8E020088 */  lw        $v0, 0x88($s0)
/* 893A88 80241068 00621821 */  addu      $v1, $v1, $v0
/* 893A8C 8024106C 04610004 */  bgez      $v1, .L80241080
/* 893A90 80241070 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 893A94 80241074 3C020002 */  lui       $v0, 2
/* 893A98 80241078 08090424 */  j         .L80241090
/* 893A9C 8024107C 00621021 */   addu     $v0, $v1, $v0
.L80241080:
/* 893AA0 80241080 3C040002 */  lui       $a0, 2
/* 893AA4 80241084 0083102A */  slt       $v0, $a0, $v1
/* 893AA8 80241088 10400002 */  beqz      $v0, .L80241094
/* 893AAC 8024108C 00641023 */   subu     $v0, $v1, $a0
.L80241090:
/* 893AB0 80241090 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80241094:
/* 893AB4 80241094 8E0300AC */  lw        $v1, 0xac($s0)
/* 893AB8 80241098 8E02008C */  lw        $v0, 0x8c($s0)
/* 893ABC 8024109C 00621821 */  addu      $v1, $v1, $v0
/* 893AC0 802410A0 04610004 */  bgez      $v1, .L802410B4
/* 893AC4 802410A4 AE0300AC */   sw       $v1, 0xac($s0)
/* 893AC8 802410A8 3C020002 */  lui       $v0, 2
/* 893ACC 802410AC 08090431 */  j         .L802410C4
/* 893AD0 802410B0 00621021 */   addu     $v0, $v1, $v0
.L802410B4:
/* 893AD4 802410B4 3C040002 */  lui       $a0, 2
/* 893AD8 802410B8 0083102A */  slt       $v0, $a0, $v1
/* 893ADC 802410BC 10400002 */  beqz      $v0, .L802410C8
/* 893AE0 802410C0 00641023 */   subu     $v0, $v1, $a0
.L802410C4:
/* 893AE4 802410C4 AE0200AC */  sw        $v0, 0xac($s0)
.L802410C8:
/* 893AE8 802410C8 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 893AEC 802410CC 8E020090 */  lw        $v0, 0x90($s0)
/* 893AF0 802410D0 00621821 */  addu      $v1, $v1, $v0
/* 893AF4 802410D4 04610004 */  bgez      $v1, .L802410E8
/* 893AF8 802410D8 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 893AFC 802410DC 3C020002 */  lui       $v0, 2
/* 893B00 802410E0 0809043E */  j         .L802410F8
/* 893B04 802410E4 00621021 */   addu     $v0, $v1, $v0
.L802410E8:
/* 893B08 802410E8 3C040002 */  lui       $a0, 2
/* 893B0C 802410EC 0083102A */  slt       $v0, $a0, $v1
/* 893B10 802410F0 10400002 */  beqz      $v0, .L802410FC
/* 893B14 802410F4 00641023 */   subu     $v0, $v1, $a0
.L802410F8:
/* 893B18 802410F8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802410FC:
/* 893B1C 802410FC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 893B20 80241100 8E020094 */  lw        $v0, 0x94($s0)
/* 893B24 80241104 00621821 */  addu      $v1, $v1, $v0
/* 893B28 80241108 04610004 */  bgez      $v1, .L8024111C
/* 893B2C 8024110C AE0300B4 */   sw       $v1, 0xb4($s0)
/* 893B30 80241110 3C020002 */  lui       $v0, 2
/* 893B34 80241114 0809044B */  j         .L8024112C
/* 893B38 80241118 00621021 */   addu     $v0, $v1, $v0
.L8024111C:
/* 893B3C 8024111C 3C040002 */  lui       $a0, 2
/* 893B40 80241120 0083102A */  slt       $v0, $a0, $v1
/* 893B44 80241124 10400002 */  beqz      $v0, .L80241130
/* 893B48 80241128 00641023 */   subu     $v0, $v1, $a0
.L8024112C:
/* 893B4C 8024112C AE0200B4 */  sw        $v0, 0xb4($s0)
.L80241130:
/* 893B50 80241130 8E040084 */  lw        $a0, 0x84($s0)
/* 893B54 80241134 0C046F07 */  jal       set_main_pan_u
/* 893B58 80241138 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 893B5C 8024113C 8E040084 */  lw        $a0, 0x84($s0)
/* 893B60 80241140 0C046F0D */  jal       set_main_pan_v
/* 893B64 80241144 8E0500AC */   lw       $a1, 0xac($s0)
/* 893B68 80241148 8E040084 */  lw        $a0, 0x84($s0)
/* 893B6C 8024114C 0C046F13 */  jal       set_aux_pan_u
/* 893B70 80241150 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 893B74 80241154 8E040084 */  lw        $a0, 0x84($s0)
/* 893B78 80241158 0C046F19 */  jal       set_aux_pan_v
/* 893B7C 8024115C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 893B80 80241160 8FBF0014 */  lw        $ra, 0x14($sp)
/* 893B84 80241164 8FB00010 */  lw        $s0, 0x10($sp)
/* 893B88 80241168 0000102D */  daddu     $v0, $zero, $zero
/* 893B8C 8024116C 03E00008 */  jr        $ra
/* 893B90 80241170 27BD0018 */   addiu    $sp, $sp, 0x18
