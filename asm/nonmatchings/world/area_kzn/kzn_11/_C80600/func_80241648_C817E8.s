.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241648_C817E8
/* C817E8 80241648 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* C817EC 8024164C AFB00028 */  sw        $s0, 0x28($sp)
/* C817F0 80241650 00A0802D */  daddu     $s0, $a1, $zero
/* C817F4 80241654 AFB1002C */  sw        $s1, 0x2c($sp)
/* C817F8 80241658 00C0882D */  daddu     $s1, $a2, $zero
/* C817FC 8024165C AFBF0034 */  sw        $ra, 0x34($sp)
/* C81800 80241660 AFB20030 */  sw        $s2, 0x30($sp)
/* C81804 80241664 AE200070 */  sw        $zero, 0x70($s1)
/* C81808 80241668 8C830000 */  lw        $v1, ($a0)
/* C8180C 8024166C 2402FDFF */  addiu     $v0, $zero, -0x201
/* C81810 80241670 A480008E */  sh        $zero, 0x8e($a0)
/* C81814 80241674 00621824 */  and       $v1, $v1, $v0
/* C81818 80241678 34650800 */  ori       $a1, $v1, 0x800
/* C8181C 8024167C AC850000 */  sw        $a1, ($a0)
/* C81820 80241680 8E0200D0 */  lw        $v0, 0xd0($s0)
/* C81824 80241684 8C420034 */  lw        $v0, 0x34($v0)
/* C81828 80241688 10400003 */  beqz      $v0, .L80241698
/* C8182C 8024168C 00E0902D */   daddu    $s2, $a3, $zero
/* C81830 80241690 080905A8 */  j         .L802416A0
/* C81834 80241694 34620808 */   ori      $v0, $v1, 0x808
.L80241698:
/* C81838 80241698 2402FFF7 */  addiu     $v0, $zero, -9
/* C8183C 8024169C 00A21024 */  and       $v0, $a1, $v0
.L802416A0:
/* C81840 802416A0 AC820000 */  sw        $v0, ($a0)
/* C81844 802416A4 27A20024 */  addiu     $v0, $sp, 0x24
/* C81848 802416A8 27A50018 */  addiu     $a1, $sp, 0x18
/* C8184C 802416AC C4800038 */  lwc1      $f0, 0x38($a0)
/* C81850 802416B0 C482003C */  lwc1      $f2, 0x3c($a0)
/* C81854 802416B4 C4840040 */  lwc1      $f4, 0x40($a0)
/* C81858 802416B8 3C01447A */  lui       $at, 0x447a
/* C8185C 802416BC 44813000 */  mtc1      $at, $f6
/* C81860 802416C0 27A6001C */  addiu     $a2, $sp, 0x1c
/* C81864 802416C4 E7A00018 */  swc1      $f0, 0x18($sp)
/* C81868 802416C8 E7A2001C */  swc1      $f2, 0x1c($sp)
/* C8186C 802416CC E7A40020 */  swc1      $f4, 0x20($sp)
/* C81870 802416D0 E7A60024 */  swc1      $f6, 0x24($sp)
/* C81874 802416D4 AFA20010 */  sw        $v0, 0x10($sp)
/* C81878 802416D8 8C840080 */  lw        $a0, 0x80($a0)
/* C8187C 802416DC 0C0372DF */  jal       func_800DCB7C
/* C81880 802416E0 27A70020 */   addiu    $a3, $sp, 0x20
/* C81884 802416E4 C7A20024 */  lwc1      $f2, 0x24($sp)
/* C81888 802416E8 3C014059 */  lui       $at, 0x4059
/* C8188C 802416EC 44812800 */  mtc1      $at, $f5
/* C81890 802416F0 44802000 */  mtc1      $zero, $f4
/* C81894 802416F4 460010A1 */  cvt.d.s   $f2, $f2
/* C81898 802416F8 46241082 */  mul.d     $f2, $f2, $f4
/* C8189C 802416FC 00000000 */  nop       
/* C818A0 80241700 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* C818A4 80241704 46000021 */  cvt.d.s   $f0, $f0
/* C818A8 80241708 46240002 */  mul.d     $f0, $f0, $f4
/* C818AC 8024170C 00000000 */  nop       
/* C818B0 80241710 3C013FE0 */  lui       $at, 0x3fe0
/* C818B4 80241714 44812800 */  mtc1      $at, $f5
/* C818B8 80241718 44802000 */  mtc1      $zero, $f4
/* C818BC 8024171C 00000000 */  nop       
/* C818C0 80241720 46241080 */  add.d     $f2, $f2, $f4
/* C818C4 80241724 AE000074 */  sw        $zero, 0x74($s0)
/* C818C8 80241728 46240000 */  add.d     $f0, $f0, $f4
/* C818CC 8024172C AE000090 */  sw        $zero, 0x90($s0)
/* C818D0 80241730 4620120D */  trunc.w.d $f8, $f2
/* C818D4 80241734 E6080078 */  swc1      $f8, 0x78($s0)
/* C818D8 80241738 4620020D */  trunc.w.d $f8, $f0
/* C818DC 8024173C E6080088 */  swc1      $f8, 0x88($s0)
/* C818E0 80241740 8E420014 */  lw        $v0, 0x14($s2)
/* C818E4 80241744 AE220074 */  sw        $v0, 0x74($s1)
/* C818E8 80241748 8E0200B0 */  lw        $v0, 0xb0($s0)
/* C818EC 8024174C 34420010 */  ori       $v0, $v0, 0x10
/* C818F0 80241750 AE0200B0 */  sw        $v0, 0xb0($s0)
/* C818F4 80241754 8FBF0034 */  lw        $ra, 0x34($sp)
/* C818F8 80241758 8FB20030 */  lw        $s2, 0x30($sp)
/* C818FC 8024175C 8FB1002C */  lw        $s1, 0x2c($sp)
/* C81900 80241760 8FB00028 */  lw        $s0, 0x28($sp)
/* C81904 80241764 03E00008 */  jr        $ra
/* C81908 80241768 27BD0038 */   addiu    $sp, $sp, 0x38
