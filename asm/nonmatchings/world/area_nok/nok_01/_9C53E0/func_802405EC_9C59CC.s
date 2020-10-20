.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802405EC_9C59CC
/* 9C59CC 802405EC 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 9C59D0 802405F0 AFB3003C */  sw        $s3, 0x3c($sp)
/* 9C59D4 802405F4 0080982D */  daddu     $s3, $a0, $zero
/* 9C59D8 802405F8 AFBF0044 */  sw        $ra, 0x44($sp)
/* 9C59DC 802405FC AFB40040 */  sw        $s4, 0x40($sp)
/* 9C59E0 80240600 AFB20038 */  sw        $s2, 0x38($sp)
/* 9C59E4 80240604 AFB10034 */  sw        $s1, 0x34($sp)
/* 9C59E8 80240608 AFB00030 */  sw        $s0, 0x30($sp)
/* 9C59EC 8024060C 8E710148 */  lw        $s1, 0x148($s3)
/* 9C59F0 80240610 00A0902D */  daddu     $s2, $a1, $zero
/* 9C59F4 80240614 86240008 */  lh        $a0, 8($s1)
/* 9C59F8 80240618 0C00EABB */  jal       get_npc_unsafe
/* 9C59FC 8024061C 00C0A02D */   daddu    $s4, $a2, $zero
/* 9C5A00 80240620 8E430008 */  lw        $v1, 8($s2)
/* 9C5A04 80240624 0460003B */  bltz      $v1, .L80240714
/* 9C5A08 80240628 0040802D */   daddu    $s0, $v0, $zero
/* 9C5A0C 8024062C 8E620074 */  lw        $v0, 0x74($s3)
/* 9C5A10 80240630 1C400037 */  bgtz      $v0, .L80240710
/* 9C5A14 80240634 2442FFFF */   addiu    $v0, $v0, -1
/* 9C5A18 80240638 0280202D */  daddu     $a0, $s4, $zero
/* 9C5A1C 8024063C AE630074 */  sw        $v1, 0x74($s3)
/* 9C5A20 80240640 AFA00010 */  sw        $zero, 0x10($sp)
/* 9C5A24 80240644 8E460018 */  lw        $a2, 0x18($s2)
/* 9C5A28 80240648 8E47001C */  lw        $a3, 0x1c($s2)
/* 9C5A2C 8024064C 0C01242D */  jal       func_800490B4
/* 9C5A30 80240650 0220282D */   daddu    $a1, $s1, $zero
/* 9C5A34 80240654 1040002C */  beqz      $v0, .L80240708
/* 9C5A38 80240658 0000202D */   daddu    $a0, $zero, $zero
/* 9C5A3C 8024065C 0200282D */  daddu     $a1, $s0, $zero
/* 9C5A40 80240660 0000302D */  daddu     $a2, $zero, $zero
/* 9C5A44 80240664 860300A8 */  lh        $v1, 0xa8($s0)
/* 9C5A48 80240668 3C013F80 */  lui       $at, 0x3f80
/* 9C5A4C 8024066C 44810000 */  mtc1      $at, $f0
/* 9C5A50 80240670 3C014000 */  lui       $at, 0x4000
/* 9C5A54 80240674 44811000 */  mtc1      $at, $f2
/* 9C5A58 80240678 3C01C1A0 */  lui       $at, 0xc1a0
/* 9C5A5C 8024067C 44812000 */  mtc1      $at, $f4
/* 9C5A60 80240680 2402000F */  addiu     $v0, $zero, 0xf
/* 9C5A64 80240684 AFA2001C */  sw        $v0, 0x1c($sp)
/* 9C5A68 80240688 44833000 */  mtc1      $v1, $f6
/* 9C5A6C 8024068C 00000000 */  nop       
/* 9C5A70 80240690 468031A0 */  cvt.s.w   $f6, $f6
/* 9C5A74 80240694 44073000 */  mfc1      $a3, $f6
/* 9C5A78 80240698 27A20028 */  addiu     $v0, $sp, 0x28
/* 9C5A7C 8024069C AFA20020 */  sw        $v0, 0x20($sp)
/* 9C5A80 802406A0 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9C5A84 802406A4 E7A20014 */  swc1      $f2, 0x14($sp)
/* 9C5A88 802406A8 0C01BFA4 */  jal       fx_emote
/* 9C5A8C 802406AC E7A40018 */   swc1     $f4, 0x18($sp)
/* 9C5A90 802406B0 0200202D */  daddu     $a0, $s0, $zero
/* 9C5A94 802406B4 240502F4 */  addiu     $a1, $zero, 0x2f4
/* 9C5A98 802406B8 0C012530 */  jal       func_800494C0
/* 9C5A9C 802406BC 3C060020 */   lui      $a2, 0x20
/* 9C5AA0 802406C0 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9C5AA4 802406C4 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 9C5AA8 802406C8 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 9C5AAC 802406CC C60E0040 */  lwc1      $f14, 0x40($s0)
/* 9C5AB0 802406D0 8C460028 */  lw        $a2, 0x28($v0)
/* 9C5AB4 802406D4 0C00A720 */  jal       atan2
/* 9C5AB8 802406D8 8C470030 */   lw       $a3, 0x30($v0)
/* 9C5ABC 802406DC E600000C */  swc1      $f0, 0xc($s0)
/* 9C5AC0 802406E0 8E220018 */  lw        $v0, 0x18($s1)
/* 9C5AC4 802406E4 9442002A */  lhu       $v0, 0x2a($v0)
/* 9C5AC8 802406E8 30420001 */  andi      $v0, $v0, 1
/* 9C5ACC 802406EC 10400003 */  beqz      $v0, .L802406FC
/* 9C5AD0 802406F0 2402000A */   addiu    $v0, $zero, 0xa
/* 9C5AD4 802406F4 080901F5 */  j         .L802407D4
/* 9C5AD8 802406F8 AE620070 */   sw       $v0, 0x70($s3)
.L802406FC:
/* 9C5ADC 802406FC 2402000C */  addiu     $v0, $zero, 0xc
/* 9C5AE0 80240700 080901F5 */  j         .L802407D4
/* 9C5AE4 80240704 AE620070 */   sw       $v0, 0x70($s3)
.L80240708:
/* 9C5AE8 80240708 8E620074 */  lw        $v0, 0x74($s3)
/* 9C5AEC 8024070C 2442FFFF */  addiu     $v0, $v0, -1
.L80240710:
/* 9C5AF0 80240710 AE620074 */  sw        $v0, 0x74($s3)
.L80240714:
/* 9C5AF4 80240714 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9C5AF8 80240718 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9C5AFC 8024071C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 9C5B00 80240720 C4460000 */  lwc1      $f6, ($v0)
/* 9C5B04 80240724 468031A0 */  cvt.s.w   $f6, $f6
/* 9C5B08 80240728 44063000 */  mfc1      $a2, $f6
/* 9C5B0C 8024072C C4460008 */  lwc1      $f6, 8($v0)
/* 9C5B10 80240730 468031A0 */  cvt.s.w   $f6, $f6
/* 9C5B14 80240734 44073000 */  mfc1      $a3, $f6
/* 9C5B18 80240738 0C00A7B5 */  jal       dist2D
/* 9C5B1C 8024073C 00000000 */   nop      
/* 9C5B20 80240740 C6020018 */  lwc1      $f2, 0x18($s0)
/* 9C5B24 80240744 4602003C */  c.lt.s    $f0, $f2
/* 9C5B28 80240748 00000000 */  nop       
/* 9C5B2C 8024074C 4500000E */  bc1f      .L80240788
/* 9C5B30 80240750 00000000 */   nop      
/* 9C5B34 80240754 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9C5B38 80240758 C4400000 */  lwc1      $f0, ($v0)
/* 9C5B3C 8024075C 46800020 */  cvt.s.w   $f0, $f0
/* 9C5B40 80240760 E6000038 */  swc1      $f0, 0x38($s0)
/* 9C5B44 80240764 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9C5B48 80240768 C4400008 */  lwc1      $f0, 8($v0)
/* 9C5B4C 8024076C 46800020 */  cvt.s.w   $f0, $f0
/* 9C5B50 80240770 E6000040 */  swc1      $f0, 0x40($s0)
/* 9C5B54 80240774 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9C5B58 80240778 C440000C */  lwc1      $f0, 0xc($v0)
/* 9C5B5C 8024077C 46800020 */  cvt.s.w   $f0, $f0
/* 9C5B60 80240780 E600000C */  swc1      $f0, 0xc($s0)
/* 9C5B64 80240784 AE600070 */  sw        $zero, 0x70($s3)
.L80240788:
/* 9C5B68 80240788 8602008C */  lh        $v0, 0x8c($s0)
/* 9C5B6C 8024078C 14400011 */  bnez      $v0, .L802407D4
/* 9C5B70 80240790 00000000 */   nop      
/* 9C5B74 80240794 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 9C5B78 80240798 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9C5B7C 8024079C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 9C5B80 802407A0 C4460000 */  lwc1      $f6, ($v0)
/* 9C5B84 802407A4 468031A0 */  cvt.s.w   $f6, $f6
/* 9C5B88 802407A8 44063000 */  mfc1      $a2, $f6
/* 9C5B8C 802407AC C4460008 */  lwc1      $f6, 8($v0)
/* 9C5B90 802407B0 468031A0 */  cvt.s.w   $f6, $f6
/* 9C5B94 802407B4 44073000 */  mfc1      $a3, $f6
/* 9C5B98 802407B8 0C00A720 */  jal       atan2
/* 9C5B9C 802407BC 00000000 */   nop      
/* 9C5BA0 802407C0 8E050018 */  lw        $a1, 0x18($s0)
/* 9C5BA4 802407C4 44060000 */  mfc1      $a2, $f0
/* 9C5BA8 802407C8 0200202D */  daddu     $a0, $s0, $zero
/* 9C5BAC 802407CC 0C00EA95 */  jal       npc_move_heading
/* 9C5BB0 802407D0 AC86000C */   sw       $a2, 0xc($a0)
.L802407D4:
/* 9C5BB4 802407D4 8FBF0044 */  lw        $ra, 0x44($sp)
/* 9C5BB8 802407D8 8FB40040 */  lw        $s4, 0x40($sp)
/* 9C5BBC 802407DC 8FB3003C */  lw        $s3, 0x3c($sp)
/* 9C5BC0 802407E0 8FB20038 */  lw        $s2, 0x38($sp)
/* 9C5BC4 802407E4 8FB10034 */  lw        $s1, 0x34($sp)
/* 9C5BC8 802407E8 8FB00030 */  lw        $s0, 0x30($sp)
/* 9C5BCC 802407EC 03E00008 */  jr        $ra
/* 9C5BD0 802407F0 27BD0048 */   addiu    $sp, $sp, 0x48
