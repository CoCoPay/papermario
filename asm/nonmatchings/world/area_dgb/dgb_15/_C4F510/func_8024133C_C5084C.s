.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024133C_C5084C
/* C5084C 8024133C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C50850 80241340 AFB10014 */  sw        $s1, 0x14($sp)
/* C50854 80241344 0080882D */  daddu     $s1, $a0, $zero
/* C50858 80241348 AFBF0018 */  sw        $ra, 0x18($sp)
/* C5085C 8024134C AFB00010 */  sw        $s0, 0x10($sp)
/* C50860 80241350 8E300148 */  lw        $s0, 0x148($s1)
/* C50864 80241354 0C00EABB */  jal       get_npc_unsafe
/* C50868 80241358 86040008 */   lh       $a0, 8($s0)
/* C5086C 8024135C 9443008E */  lhu       $v1, 0x8e($v0)
/* C50870 80241360 2463FFFF */  addiu     $v1, $v1, -1
/* C50874 80241364 A443008E */  sh        $v1, 0x8e($v0)
/* C50878 80241368 00031C00 */  sll       $v1, $v1, 0x10
/* C5087C 8024136C 14600008 */  bnez      $v1, .L80241390
/* C50880 80241370 00000000 */   nop      
/* C50884 80241374 8E0200B0 */  lw        $v0, 0xb0($s0)
/* C50888 80241378 30420080 */  andi      $v0, $v0, 0x80
/* C5088C 8024137C 10400003 */  beqz      $v0, .L8024138C
/* C50890 80241380 2402000F */   addiu    $v0, $zero, 0xf
/* C50894 80241384 080904E4 */  j         .L80241390
/* C50898 80241388 AE220070 */   sw       $v0, 0x70($s1)
.L8024138C:
/* C5089C 8024138C AE200070 */  sw        $zero, 0x70($s1)
.L80241390:
/* C508A0 80241390 8FBF0018 */  lw        $ra, 0x18($sp)
/* C508A4 80241394 8FB10014 */  lw        $s1, 0x14($sp)
/* C508A8 80241398 8FB00010 */  lw        $s0, 0x10($sp)
/* C508AC 8024139C 03E00008 */  jr        $ra
/* C508B0 802413A0 27BD0020 */   addiu    $sp, $sp, 0x20
