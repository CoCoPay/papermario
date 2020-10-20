.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024067C_C4042C
/* C4042C 8024067C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C40430 80240680 AFB10014 */  sw        $s1, 0x14($sp)
/* C40434 80240684 0080882D */  daddu     $s1, $a0, $zero
/* C40438 80240688 AFBF001C */  sw        $ra, 0x1c($sp)
/* C4043C 8024068C AFB20018 */  sw        $s2, 0x18($sp)
/* C40440 80240690 AFB00010 */  sw        $s0, 0x10($sp)
/* C40444 80240694 8E300148 */  lw        $s0, 0x148($s1)
/* C40448 80240698 86040008 */  lh        $a0, 8($s0)
/* C4044C 8024069C 0C00EABB */  jal       get_npc_unsafe
/* C40450 802406A0 00A0902D */   daddu    $s2, $a1, $zero
/* C40454 802406A4 8E230078 */  lw        $v1, 0x78($s1)
/* C40458 802406A8 24630001 */  addiu     $v1, $v1, 1
/* C4045C 802406AC AE230078 */  sw        $v1, 0x78($s1)
/* C40460 802406B0 8E0400D0 */  lw        $a0, 0xd0($s0)
/* C40464 802406B4 8C840000 */  lw        $a0, ($a0)
/* C40468 802406B8 0064182A */  slt       $v1, $v1, $a0
/* C4046C 802406BC 14600002 */  bnez      $v1, .L802406C8
/* C40470 802406C0 0040282D */   daddu    $a1, $v0, $zero
/* C40474 802406C4 AE200078 */  sw        $zero, 0x78($s1)
.L802406C8:
/* C40478 802406C8 8E0200CC */  lw        $v0, 0xcc($s0)
/* C4047C 802406CC 8C420004 */  lw        $v0, 4($v0)
/* C40480 802406D0 ACA20028 */  sw        $v0, 0x28($a1)
/* C40484 802406D4 8E0200D0 */  lw        $v0, 0xd0($s0)
/* C40488 802406D8 8C42007C */  lw        $v0, 0x7c($v0)
/* C4048C 802406DC 04410004 */  bgez      $v0, .L802406F0
/* C40490 802406E0 00000000 */   nop      
/* C40494 802406E4 C6400000 */  lwc1      $f0, ($s2)
/* C40498 802406E8 080901C4 */  j         .L80240710
/* C4049C 802406EC E4A00018 */   swc1     $f0, 0x18($a1)
.L802406F0:
/* C404A0 802406F0 3C018024 */  lui       $at, 0x8024
/* C404A4 802406F4 D4226A08 */  ldc1      $f2, 0x6a08($at)
/* C404A8 802406F8 44820000 */  mtc1      $v0, $f0
/* C404AC 802406FC 00000000 */  nop       
/* C404B0 80240700 46800021 */  cvt.d.w   $f0, $f0
/* C404B4 80240704 46220003 */  div.d     $f0, $f0, $f2
/* C404B8 80240708 46200020 */  cvt.s.d   $f0, $f0
/* C404BC 8024070C E4A00018 */  swc1      $f0, 0x18($a1)
.L80240710:
/* C404C0 80240710 24020001 */  addiu     $v0, $zero, 1
/* C404C4 80240714 AE220070 */  sw        $v0, 0x70($s1)
/* C404C8 80240718 8FBF001C */  lw        $ra, 0x1c($sp)
/* C404CC 8024071C 8FB20018 */  lw        $s2, 0x18($sp)
/* C404D0 80240720 8FB10014 */  lw        $s1, 0x14($sp)
/* C404D4 80240724 8FB00010 */  lw        $s0, 0x10($sp)
/* C404D8 80240728 03E00008 */  jr        $ra
/* C404DC 8024072C 27BD0020 */   addiu    $sp, $sp, 0x20
