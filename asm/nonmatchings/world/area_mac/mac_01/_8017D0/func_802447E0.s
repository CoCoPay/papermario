.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802447E0
/* 805060 802447E0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 805064 802447E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 805068 802447E8 0080802D */  daddu     $s0, $a0, $zero
/* 80506C 802447EC 10A00002 */  beqz      $a1, .L802447F8
/* 805070 802447F0 AFBF0014 */   sw       $ra, 0x14($sp)
/* 805074 802447F4 AE000074 */  sw        $zero, 0x74($s0)
.L802447F8:
/* 805078 802447F8 8E020074 */  lw        $v0, 0x74($s0)
/* 80507C 802447FC 2442000A */  addiu     $v0, $v0, 0xa
/* 805080 80244800 AE020074 */  sw        $v0, 0x74($s0)
/* 805084 80244804 28420100 */  slti      $v0, $v0, 0x100
/* 805088 80244808 14400002 */  bnez      $v0, .L80244814
/* 80508C 8024480C 240200FF */   addiu    $v0, $zero, 0xff
/* 805090 80244810 AE020074 */  sw        $v0, 0x74($s0)
.L80244814:
/* 805094 80244814 C6000074 */  lwc1      $f0, 0x74($s0)
/* 805098 80244818 46800020 */  cvt.s.w   $f0, $f0
/* 80509C 8024481C 44050000 */  mfc1      $a1, $f0
/* 8050A0 80244820 0C04DF62 */  jal       func_80137D88
/* 8050A4 80244824 0000202D */   daddu    $a0, $zero, $zero
/* 8050A8 80244828 8E020074 */  lw        $v0, 0x74($s0)
/* 8050AC 8024482C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 8050B0 80244830 8FB00010 */  lw        $s0, 0x10($sp)
/* 8050B4 80244834 384200FF */  xori      $v0, $v0, 0xff
/* 8050B8 80244838 2C420001 */  sltiu     $v0, $v0, 1
/* 8050BC 8024483C 00021040 */  sll       $v0, $v0, 1
/* 8050C0 80244840 03E00008 */  jr        $ra
/* 8050C4 80244844 27BD0018 */   addiu    $sp, $sp, 0x18
