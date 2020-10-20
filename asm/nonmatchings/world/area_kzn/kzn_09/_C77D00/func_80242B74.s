.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242B74
/* C79854 80242B74 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* C79858 80242B78 AFB3003C */  sw        $s3, 0x3c($sp)
/* C7985C 80242B7C 0080982D */  daddu     $s3, $a0, $zero
/* C79860 80242B80 AFBF0040 */  sw        $ra, 0x40($sp)
/* C79864 80242B84 AFB20038 */  sw        $s2, 0x38($sp)
/* C79868 80242B88 AFB10034 */  sw        $s1, 0x34($sp)
/* C7986C 80242B8C AFB00030 */  sw        $s0, 0x30($sp)
/* C79870 80242B90 8E710148 */  lw        $s1, 0x148($s3)
/* C79874 80242B94 0C00EABB */  jal       get_npc_unsafe
/* C79878 80242B98 86240008 */   lh       $a0, 8($s1)
/* C7987C 80242B9C 0040802D */  daddu     $s0, $v0, $zero
/* C79880 80242BA0 8E22007C */  lw        $v0, 0x7c($s1)
/* C79884 80242BA4 8603008E */  lh        $v1, 0x8e($s0)
/* C79888 80242BA8 2442FFFF */  addiu     $v0, $v0, -1
/* C7988C 80242BAC 14620012 */  bne       $v1, $v0, .L80242BF8
/* C79890 80242BB0 00000000 */   nop      
/* C79894 80242BB4 C6000038 */  lwc1      $f0, 0x38($s0)
/* C79898 80242BB8 4600020D */  trunc.w.s $f8, $f0
/* C7989C 80242BBC 44024000 */  mfc1      $v0, $f8
/* C798A0 80242BC0 00000000 */  nop       
/* C798A4 80242BC4 A6220010 */  sh        $v0, 0x10($s1)
/* C798A8 80242BC8 C600003C */  lwc1      $f0, 0x3c($s0)
/* C798AC 80242BCC 4600020D */  trunc.w.s $f8, $f0
/* C798B0 80242BD0 44024000 */  mfc1      $v0, $f8
/* C798B4 80242BD4 00000000 */  nop       
/* C798B8 80242BD8 A6220012 */  sh        $v0, 0x12($s1)
/* C798BC 80242BDC C6000040 */  lwc1      $f0, 0x40($s0)
/* C798C0 80242BE0 24020001 */  addiu     $v0, $zero, 1
/* C798C4 80242BE4 A2220007 */  sb        $v0, 7($s1)
/* C798C8 80242BE8 4600020D */  trunc.w.s $f8, $f0
/* C798CC 80242BEC 44024000 */  mfc1      $v0, $f8
/* C798D0 80242BF0 00000000 */  nop       
/* C798D4 80242BF4 A6220014 */  sh        $v0, 0x14($s1)
.L80242BF8:
/* C798D8 80242BF8 C6000038 */  lwc1      $f0, 0x38($s0)
/* C798DC 80242BFC C602003C */  lwc1      $f2, 0x3c($s0)
/* C798E0 80242C00 C6040040 */  lwc1      $f4, 0x40($s0)
/* C798E4 80242C04 C6060018 */  lwc1      $f6, 0x18($s0)
/* C798E8 80242C08 E7A00020 */  swc1      $f0, 0x20($sp)
/* C798EC 80242C0C E7A20024 */  swc1      $f2, 0x24($sp)
/* C798F0 80242C10 E7A40028 */  swc1      $f4, 0x28($sp)
/* C798F4 80242C14 E7A60010 */  swc1      $f6, 0x10($sp)
/* C798F8 80242C18 C600000C */  lwc1      $f0, 0xc($s0)
/* C798FC 80242C1C E7A00014 */  swc1      $f0, 0x14($sp)
/* C79900 80242C20 860200A8 */  lh        $v0, 0xa8($s0)
/* C79904 80242C24 27A50020 */  addiu     $a1, $sp, 0x20
/* C79908 80242C28 44820000 */  mtc1      $v0, $f0
/* C7990C 80242C2C 00000000 */  nop       
/* C79910 80242C30 46800020 */  cvt.s.w   $f0, $f0
/* C79914 80242C34 E7A00018 */  swc1      $f0, 0x18($sp)
/* C79918 80242C38 860200A6 */  lh        $v0, 0xa6($s0)
/* C7991C 80242C3C 27A60024 */  addiu     $a2, $sp, 0x24
/* C79920 80242C40 44820000 */  mtc1      $v0, $f0
/* C79924 80242C44 00000000 */  nop       
/* C79928 80242C48 46800020 */  cvt.s.w   $f0, $f0
/* C7992C 80242C4C E7A0001C */  swc1      $f0, 0x1c($sp)
/* C79930 80242C50 8E040080 */  lw        $a0, 0x80($s0)
/* C79934 80242C54 0C037711 */  jal       func_800DDC44
/* C79938 80242C58 27A70028 */   addiu    $a3, $sp, 0x28
/* C7993C 80242C5C 0040902D */  daddu     $s2, $v0, $zero
/* C79940 80242C60 16400005 */  bnez      $s2, .L80242C78
/* C79944 80242C64 00000000 */   nop      
/* C79948 80242C68 8E050018 */  lw        $a1, 0x18($s0)
/* C7994C 80242C6C 8E06000C */  lw        $a2, 0xc($s0)
/* C79950 80242C70 0C00EA95 */  jal       npc_move_heading
/* C79954 80242C74 0200202D */   daddu    $a0, $s0, $zero
.L80242C78:
/* C79958 80242C78 8602008E */  lh        $v0, 0x8e($s0)
/* C7995C 80242C7C 9603008E */  lhu       $v1, 0x8e($s0)
/* C79960 80242C80 18400007 */  blez      $v0, .L80242CA0
/* C79964 80242C84 2462FFFF */   addiu    $v0, $v1, -1
/* C79968 80242C88 A602008E */  sh        $v0, 0x8e($s0)
/* C7996C 80242C8C 00021400 */  sll       $v0, $v0, 0x10
/* C79970 80242C90 18400003 */  blez      $v0, .L80242CA0
/* C79974 80242C94 00000000 */   nop      
/* C79978 80242C98 12400008 */  beqz      $s2, .L80242CBC
/* C7997C 80242C9C 00000000 */   nop      
.L80242CA0:
/* C79980 80242CA0 8E2200CC */  lw        $v0, 0xcc($s1)
/* C79984 80242CA4 A2200007 */  sb        $zero, 7($s1)
/* C79988 80242CA8 8C420028 */  lw        $v0, 0x28($v0)
/* C7998C 80242CAC A600008E */  sh        $zero, 0x8e($s0)
/* C79990 80242CB0 AE020028 */  sw        $v0, 0x28($s0)
/* C79994 80242CB4 2402000F */  addiu     $v0, $zero, 0xf
/* C79998 80242CB8 AE620070 */  sw        $v0, 0x70($s3)
.L80242CBC:
/* C7999C 80242CBC 8FBF0040 */  lw        $ra, 0x40($sp)
/* C799A0 80242CC0 8FB3003C */  lw        $s3, 0x3c($sp)
/* C799A4 80242CC4 8FB20038 */  lw        $s2, 0x38($sp)
/* C799A8 80242CC8 8FB10034 */  lw        $s1, 0x34($sp)
/* C799AC 80242CCC 8FB00030 */  lw        $s0, 0x30($sp)
/* C799B0 80242CD0 03E00008 */  jr        $ra
/* C799B4 80242CD4 27BD0048 */   addiu    $sp, $sp, 0x48
