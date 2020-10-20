.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241554
/* 9D8574 80241554 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 9D8578 80241558 AFB10014 */  sw        $s1, 0x14($sp)
/* 9D857C 8024155C 0080882D */  daddu     $s1, $a0, $zero
/* 9D8580 80241560 AFBF001C */  sw        $ra, 0x1c($sp)
/* 9D8584 80241564 AFB20018 */  sw        $s2, 0x18($sp)
/* 9D8588 80241568 AFB00010 */  sw        $s0, 0x10($sp)
/* 9D858C 8024156C 8E300148 */  lw        $s0, 0x148($s1)
/* 9D8590 80241570 86040008 */  lh        $a0, 8($s0)
/* 9D8594 80241574 0C00EABB */  jal       get_npc_unsafe
/* 9D8598 80241578 00A0902D */   daddu    $s2, $a1, $zero
/* 9D859C 8024157C 8E0300D0 */  lw        $v1, 0xd0($s0)
/* 9D85A0 80241580 8E240078 */  lw        $a0, 0x78($s1)
/* 9D85A4 80241584 8C630000 */  lw        $v1, ($v1)
/* 9D85A8 80241588 0083182A */  slt       $v1, $a0, $v1
/* 9D85AC 8024158C 10600013 */  beqz      $v1, .L802415DC
/* 9D85B0 80241590 0040302D */   daddu    $a2, $v0, $zero
/* 9D85B4 80241594 00041040 */  sll       $v0, $a0, 1
/* 9D85B8 80241598 00441021 */  addu      $v0, $v0, $a0
/* 9D85BC 8024159C 00022880 */  sll       $a1, $v0, 2
.L802415A0:
/* 9D85C0 802415A0 8E0300D0 */  lw        $v1, 0xd0($s0)
/* 9D85C4 802415A4 C4C2003C */  lwc1      $f2, 0x3c($a2)
/* 9D85C8 802415A8 00A31021 */  addu      $v0, $a1, $v1
/* 9D85CC 802415AC C4400008 */  lwc1      $f0, 8($v0)
/* 9D85D0 802415B0 46800020 */  cvt.s.w   $f0, $f0
/* 9D85D4 802415B4 4602003E */  c.le.s    $f0, $f2
/* 9D85D8 802415B8 00000000 */  nop       
/* 9D85DC 802415BC 45020003 */  bc1fl     .L802415CC
/* 9D85E0 802415C0 24840001 */   addiu    $a0, $a0, 1
/* 9D85E4 802415C4 08090577 */  j         .L802415DC
/* 9D85E8 802415C8 AE240078 */   sw       $a0, 0x78($s1)
.L802415CC:
/* 9D85EC 802415CC 8C620000 */  lw        $v0, ($v1)
/* 9D85F0 802415D0 0082102A */  slt       $v0, $a0, $v0
/* 9D85F4 802415D4 1440FFF2 */  bnez      $v0, .L802415A0
/* 9D85F8 802415D8 24A5000C */   addiu    $a1, $a1, 0xc
.L802415DC:
/* 9D85FC 802415DC C6400000 */  lwc1      $f0, ($s2)
/* 9D8600 802415E0 E4C00018 */  swc1      $f0, 0x18($a2)
/* 9D8604 802415E4 8E0200CC */  lw        $v0, 0xcc($s0)
/* 9D8608 802415E8 8C420004 */  lw        $v0, 4($v0)
/* 9D860C 802415EC ACC20028 */  sw        $v0, 0x28($a2)
/* 9D8610 802415F0 24020001 */  addiu     $v0, $zero, 1
/* 9D8614 802415F4 AE200074 */  sw        $zero, 0x74($s1)
/* 9D8618 802415F8 AE220070 */  sw        $v0, 0x70($s1)
/* 9D861C 802415FC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 9D8620 80241600 8FB20018 */  lw        $s2, 0x18($sp)
/* 9D8624 80241604 8FB10014 */  lw        $s1, 0x14($sp)
/* 9D8628 80241608 8FB00010 */  lw        $s0, 0x10($sp)
/* 9D862C 8024160C 03E00008 */  jr        $ra
/* 9D8630 80241610 27BD0020 */   addiu    $sp, $sp, 0x20
