.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802404B8
/* C8E068 802404B8 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* C8E06C 802404BC AFBF0020 */  sw        $ra, 0x20($sp)
/* C8E070 802404C0 AFB1001C */  sw        $s1, 0x1c($sp)
/* C8E074 802404C4 AFB00018 */  sw        $s0, 0x18($sp)
/* C8E078 802404C8 8C910084 */  lw        $s1, 0x84($a0)
/* C8E07C 802404CC 86230044 */  lh        $v1, 0x44($s1)
/* C8E080 802404D0 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* C8E084 802404D4 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* C8E088 802404D8 2C620005 */  sltiu     $v0, $v1, 5
/* C8E08C 802404DC 1040008A */  beqz      $v0, .L80240708
/* C8E090 802404E0 00031080 */   sll      $v0, $v1, 2
/* C8E094 802404E4 3C018025 */  lui       $at, 0x8025
/* C8E098 802404E8 00220821 */  addu      $at, $at, $v0
/* C8E09C 802404EC 8C228340 */  lw        $v0, -0x7cc0($at)
/* C8E0A0 802404F0 00400008 */  jr        $v0
/* C8E0A4 802404F4 00000000 */   nop      
/* C8E0A8 802404F8 8E22003C */  lw        $v0, 0x3c($s1)
/* C8E0AC 802404FC 86270046 */  lh        $a3, 0x46($s1)
/* C8E0B0 80240500 AFA20010 */  sw        $v0, 0x10($sp)
/* C8E0B4 80240504 8E250010 */  lw        $a1, 0x10($s1)
/* C8E0B8 80240508 8E26001C */  lw        $a2, 0x1c($s1)
/* C8E0BC 8024050C 0C00A8ED */  jal       update_lerp
/* C8E0C0 80240510 24040005 */   addiu    $a0, $zero, 5
/* C8E0C4 80240514 86270046 */  lh        $a3, 0x46($s1)
/* C8E0C8 80240518 8E22003C */  lw        $v0, 0x3c($s1)
/* C8E0CC 8024051C E6200004 */  swc1      $f0, 4($s1)
/* C8E0D0 80240520 AFA20010 */  sw        $v0, 0x10($sp)
/* C8E0D4 80240524 8E25000C */  lw        $a1, 0xc($s1)
/* C8E0D8 80240528 8E260018 */  lw        $a2, 0x18($s1)
/* C8E0DC 8024052C 0C00A8ED */  jal       update_lerp
/* C8E0E0 80240530 0000202D */   daddu    $a0, $zero, $zero
/* C8E0E4 80240534 86270046 */  lh        $a3, 0x46($s1)
/* C8E0E8 80240538 8E22003C */  lw        $v0, 0x3c($s1)
/* C8E0EC 8024053C E6200000 */  swc1      $f0, ($s1)
/* C8E0F0 80240540 AFA20010 */  sw        $v0, 0x10($sp)
/* C8E0F4 80240544 8E250014 */  lw        $a1, 0x14($s1)
/* C8E0F8 80240548 8E260020 */  lw        $a2, 0x20($s1)
/* C8E0FC 8024054C 0C00A8ED */  jal       update_lerp
/* C8E100 80240550 0000202D */   daddu    $a0, $zero, $zero
/* C8E104 80240554 8E220050 */  lw        $v0, 0x50($s1)
/* C8E108 80240558 E6200008 */  swc1      $f0, 8($s1)
/* C8E10C 8024055C C6200000 */  lwc1      $f0, ($s1)
/* C8E110 80240560 8C42000C */  lw        $v0, 0xc($v0)
/* C8E114 80240564 E4400008 */  swc1      $f0, 8($v0)
/* C8E118 80240568 8E220050 */  lw        $v0, 0x50($s1)
/* C8E11C 8024056C C6200004 */  lwc1      $f0, 4($s1)
/* C8E120 80240570 8C42000C */  lw        $v0, 0xc($v0)
/* C8E124 80240574 E440000C */  swc1      $f0, 0xc($v0)
/* C8E128 80240578 8E220050 */  lw        $v0, 0x50($s1)
/* C8E12C 8024057C C6200008 */  lwc1      $f0, 8($s1)
/* C8E130 80240580 8C42000C */  lw        $v0, 0xc($v0)
/* C8E134 80240584 E4400010 */  swc1      $f0, 0x10($v0)
/* C8E138 80240588 96220046 */  lhu       $v0, 0x46($s1)
/* C8E13C 8024058C 8E23003C */  lw        $v1, 0x3c($s1)
/* C8E140 80240590 24420001 */  addiu     $v0, $v0, 1
/* C8E144 80240594 A6220046 */  sh        $v0, 0x46($s1)
/* C8E148 80240598 00021400 */  sll       $v0, $v0, 0x10
/* C8E14C 8024059C 00021403 */  sra       $v0, $v0, 0x10
/* C8E150 802405A0 0043102A */  slt       $v0, $v0, $v1
/* C8E154 802405A4 14400058 */  bnez      $v0, .L80240708
/* C8E158 802405A8 24020001 */   addiu    $v0, $zero, 1
/* C8E15C 802405AC A6220044 */  sh        $v0, 0x44($s1)
/* C8E160 802405B0 080901C2 */  j         .L80240708
/* C8E164 802405B4 A6200046 */   sh       $zero, 0x46($s1)
/* C8E168 802405B8 96220046 */  lhu       $v0, 0x46($s1)
/* C8E16C 802405BC 24420001 */  addiu     $v0, $v0, 1
/* C8E170 802405C0 A6220046 */  sh        $v0, 0x46($s1)
/* C8E174 802405C4 00021400 */  sll       $v0, $v0, 0x10
/* C8E178 802405C8 00021403 */  sra       $v0, $v0, 0x10
/* C8E17C 802405CC 2842003C */  slti      $v0, $v0, 0x3c
/* C8E180 802405D0 1440004D */  bnez      $v0, .L80240708
/* C8E184 802405D4 24020002 */   addiu    $v0, $zero, 2
/* C8E188 802405D8 8E230050 */  lw        $v1, 0x50($s1)
/* C8E18C 802405DC A6220044 */  sh        $v0, 0x44($s1)
/* C8E190 802405E0 A6200046 */  sh        $zero, 0x46($s1)
/* C8E194 802405E4 8C63000C */  lw        $v1, 0xc($v1)
/* C8E198 802405E8 24020001 */  addiu     $v0, $zero, 1
/* C8E19C 802405EC AC620070 */  sw        $v0, 0x70($v1)
/* C8E1A0 802405F0 8E220050 */  lw        $v0, 0x50($s1)
/* C8E1A4 802405F4 8C42000C */  lw        $v0, 0xc($v0)
/* C8E1A8 802405F8 080901C2 */  j         .L80240708
/* C8E1AC 802405FC AC400074 */   sw       $zero, 0x74($v0)
/* C8E1B0 80240600 96220046 */  lhu       $v0, 0x46($s1)
/* C8E1B4 80240604 24420001 */  addiu     $v0, $v0, 1
/* C8E1B8 80240608 A6220046 */  sh        $v0, 0x46($s1)
/* C8E1BC 8024060C 00021400 */  sll       $v0, $v0, 0x10
/* C8E1C0 80240610 00021403 */  sra       $v0, $v0, 0x10
/* C8E1C4 80240614 2842003C */  slti      $v0, $v0, 0x3c
/* C8E1C8 80240618 1440003B */  bnez      $v0, .L80240708
/* C8E1CC 8024061C 00000000 */   nop      
/* C8E1D0 80240620 3C013F80 */  lui       $at, 0x3f80
/* C8E1D4 80240624 44810000 */  mtc1      $at, $f0
/* C8E1D8 80240628 AFA00014 */  sw        $zero, 0x14($sp)
/* C8E1DC 8024062C E7A00010 */  swc1      $f0, 0x10($sp)
/* C8E1E0 80240630 8E250018 */  lw        $a1, 0x18($s1)
/* C8E1E4 80240634 8E26001C */  lw        $a2, 0x1c($s1)
/* C8E1E8 80240638 8E270020 */  lw        $a3, 0x20($s1)
/* C8E1EC 8024063C 0C01C9AC */  jal       func_800726B0
/* C8E1F0 80240640 24040001 */   addiu    $a0, $zero, 1
/* C8E1F4 80240644 AE220054 */  sw        $v0, 0x54($s1)
/* C8E1F8 80240648 8C43000C */  lw        $v1, 0xc($v0)
/* C8E1FC 8024064C 9222003B */  lbu       $v0, 0x3b($s1)
/* C8E200 80240650 A0620034 */  sb        $v0, 0x34($v1)
/* C8E204 80240654 8E220054 */  lw        $v0, 0x54($s1)
/* C8E208 80240658 8C42000C */  lw        $v0, 0xc($v0)
/* C8E20C 8024065C AC400020 */  sw        $zero, 0x20($v0)
/* C8E210 80240660 8E250018 */  lw        $a1, 0x18($s1)
/* C8E214 80240664 8E260028 */  lw        $a2, 0x28($s1)
/* C8E218 80240668 8E270020 */  lw        $a3, 0x20($s1)
/* C8E21C 8024066C 0C044898 */  jal       create_shadow_type
/* C8E220 80240670 0000202D */   daddu    $a0, $zero, $zero
/* C8E224 80240674 3C014210 */  lui       $at, 0x4210
/* C8E228 80240678 44810000 */  mtc1      $at, $f0
/* C8E22C 8024067C AE220040 */  sw        $v0, 0x40($s1)
/* C8E230 80240680 24020003 */  addiu     $v0, $zero, 3
/* C8E234 80240684 A6220044 */  sh        $v0, 0x44($s1)
/* C8E238 80240688 24020001 */  addiu     $v0, $zero, 1
/* C8E23C 8024068C A6200046 */  sh        $zero, 0x46($s1)
/* C8E240 80240690 AE20002C */  sw        $zero, 0x2c($s1)
/* C8E244 80240694 A6220048 */  sh        $v0, 0x48($s1)
/* C8E248 80240698 080901C2 */  j         .L80240708
/* C8E24C 8024069C E6200030 */   swc1     $f0, 0x30($s1)
/* C8E250 802406A0 0000202D */  daddu     $a0, $zero, $zero
/* C8E254 802406A4 3C054210 */  lui       $a1, 0x4210
/* C8E258 802406A8 3C064198 */  lui       $a2, 0x4198
/* C8E25C 802406AC 86270046 */  lh        $a3, 0x46($s1)
/* C8E260 802406B0 24020078 */  addiu     $v0, $zero, 0x78
/* C8E264 802406B4 0C00A8ED */  jal       update_lerp
/* C8E268 802406B8 AFA20010 */   sw       $v0, 0x10($sp)
/* C8E26C 802406BC 96220046 */  lhu       $v0, 0x46($s1)
/* C8E270 802406C0 E6200030 */  swc1      $f0, 0x30($s1)
/* C8E274 802406C4 24420001 */  addiu     $v0, $v0, 1
/* C8E278 802406C8 A6220046 */  sh        $v0, 0x46($s1)
/* C8E27C 802406CC 00021400 */  sll       $v0, $v0, 0x10
/* C8E280 802406D0 00021403 */  sra       $v0, $v0, 0x10
/* C8E284 802406D4 28420078 */  slti      $v0, $v0, 0x78
/* C8E288 802406D8 1440000B */  bnez      $v0, .L80240708
/* C8E28C 802406DC 24030001 */   addiu    $v1, $zero, 1
/* C8E290 802406E0 C620002C */  lwc1      $f0, 0x2c($s1)
/* C8E294 802406E4 24020002 */  addiu     $v0, $zero, 2
/* C8E298 802406E8 A6220048 */  sh        $v0, 0x48($s1)
/* C8E29C 802406EC 24020004 */  addiu     $v0, $zero, 4
/* C8E2A0 802406F0 A620004C */  sh        $zero, 0x4c($s1)
/* C8E2A4 802406F4 A623004A */  sh        $v1, 0x4a($s1)
/* C8E2A8 802406F8 A623004E */  sh        $v1, 0x4e($s1)
/* C8E2AC 802406FC A6220044 */  sh        $v0, 0x44($s1)
/* C8E2B0 80240700 A6200046 */  sh        $zero, 0x46($s1)
/* C8E2B4 80240704 E6200034 */  swc1      $f0, 0x34($s1)
.L80240708:
/* C8E2B8 80240708 8623004A */  lh        $v1, 0x4a($s1)
/* C8E2BC 8024070C 24020001 */  addiu     $v0, $zero, 1
/* C8E2C0 80240710 10620005 */  beq       $v1, $v0, .L80240728
/* C8E2C4 80240714 24020002 */   addiu    $v0, $zero, 2
/* C8E2C8 80240718 1062001E */  beq       $v1, $v0, .L80240794
/* C8E2CC 8024071C 00000000 */   nop      
/* C8E2D0 80240720 0809020F */  j         .L8024083C
/* C8E2D4 80240724 00000000 */   nop      
.L80240728:
/* C8E2D8 80240728 8627004C */  lh        $a3, 0x4c($s1)
/* C8E2DC 8024072C 24100078 */  addiu     $s0, $zero, 0x78
/* C8E2E0 80240730 AFB00010 */  sw        $s0, 0x10($sp)
/* C8E2E4 80240734 8E250034 */  lw        $a1, 0x34($s1)
/* C8E2E8 80240738 3C0644B4 */  lui       $a2, 0x44b4
/* C8E2EC 8024073C 0C00A8ED */  jal       update_lerp
/* C8E2F0 80240740 24040004 */   addiu    $a0, $zero, 4
/* C8E2F4 80240744 8627004C */  lh        $a3, 0x4c($s1)
/* C8E2F8 80240748 E620002C */  swc1      $f0, 0x2c($s1)
/* C8E2FC 8024074C AFB00010 */  sw        $s0, 0x10($sp)
/* C8E300 80240750 8E25001C */  lw        $a1, 0x1c($s1)
/* C8E304 80240754 8E260024 */  lw        $a2, 0x24($s1)
/* C8E308 80240758 0C00A8ED */  jal       update_lerp
/* C8E30C 8024075C 2404000A */   addiu    $a0, $zero, 0xa
/* C8E310 80240760 9622004C */  lhu       $v0, 0x4c($s1)
/* C8E314 80240764 E6200004 */  swc1      $f0, 4($s1)
/* C8E318 80240768 24420001 */  addiu     $v0, $v0, 1
/* C8E31C 8024076C A622004C */  sh        $v0, 0x4c($s1)
/* C8E320 80240770 00021400 */  sll       $v0, $v0, 0x10
/* C8E324 80240774 00021403 */  sra       $v0, $v0, 0x10
/* C8E328 80240778 0050102A */  slt       $v0, $v0, $s0
/* C8E32C 8024077C 1440002F */  bnez      $v0, .L8024083C
/* C8E330 80240780 2402010E */   addiu    $v0, $zero, 0x10e
/* C8E334 80240784 A622004C */  sh        $v0, 0x4c($s1)
/* C8E338 80240788 24020002 */  addiu     $v0, $zero, 2
/* C8E33C 8024078C 0809020E */  j         .L80240838
/* C8E340 80240790 A622004A */   sh       $v0, 0x4a($s1)
.L80240794:
/* C8E344 80240794 8622004C */  lh        $v0, 0x4c($s1)
/* C8E348 80240798 44826000 */  mtc1      $v0, $f12
/* C8E34C 8024079C 00000000 */  nop       
/* C8E350 802407A0 0C00A8BB */  jal       sin_deg
/* C8E354 802407A4 46806320 */   cvt.s.w  $f12, $f12
/* C8E358 802407A8 3C013F80 */  lui       $at, 0x3f80
/* C8E35C 802407AC 44811000 */  mtc1      $at, $f2
/* C8E360 802407B0 00000000 */  nop       
/* C8E364 802407B4 46020000 */  add.s     $f0, $f0, $f2
/* C8E368 802407B8 46000000 */  add.s     $f0, $f0, $f0
/* C8E36C 802407BC C6220024 */  lwc1      $f2, 0x24($s1)
/* C8E370 802407C0 8622004C */  lh        $v0, 0x4c($s1)
/* C8E374 802407C4 46001080 */  add.s     $f2, $f2, $f0
/* C8E378 802407C8 24420008 */  addiu     $v0, $v0, 8
/* C8E37C 802407CC 44826000 */  mtc1      $v0, $f12
/* C8E380 802407D0 00000000 */  nop       
/* C8E384 802407D4 46806320 */  cvt.s.w   $f12, $f12
/* C8E388 802407D8 0C00A6C9 */  jal       clamp_angle
/* C8E38C 802407DC E6220004 */   swc1     $f2, 4($s1)
/* C8E390 802407E0 4600010D */  trunc.w.s $f4, $f0
/* C8E394 802407E4 44022000 */  mfc1      $v0, $f4
/* C8E398 802407E8 C6200004 */  lwc1      $f0, 4($s1)
/* C8E39C 802407EC A622004C */  sh        $v0, 0x4c($s1)
/* C8E3A0 802407F0 C60C0028 */  lwc1      $f12, 0x28($s0)
/* C8E3A4 802407F4 8E060030 */  lw        $a2, 0x30($s0)
/* C8E3A8 802407F8 3C0141A0 */  lui       $at, 0x41a0
/* C8E3AC 802407FC 44817000 */  mtc1      $at, $f14
/* C8E3B0 80240800 E7A00010 */  swc1      $f0, 0x10($sp)
/* C8E3B4 80240804 C602002C */  lwc1      $f2, 0x2c($s0)
/* C8E3B8 80240808 C6200008 */  lwc1      $f0, 8($s1)
/* C8E3BC 8024080C E7A00014 */  swc1      $f0, 0x14($sp)
/* C8E3C0 80240810 8E270000 */  lw        $a3, ($s1)
/* C8E3C4 80240814 0C00A7CB */  jal       dist3D
/* C8E3C8 80240818 460E1380 */   add.s    $f14, $f2, $f14
/* C8E3CC 8024081C 3C0141F0 */  lui       $at, 0x41f0
/* C8E3D0 80240820 44811000 */  mtc1      $at, $f2
/* C8E3D4 80240824 00000000 */  nop       
/* C8E3D8 80240828 4600103C */  c.lt.s    $f2, $f0
/* C8E3DC 8024082C 00000000 */  nop       
/* C8E3E0 80240830 45010002 */  bc1t      .L8024083C
/* C8E3E4 80240834 24020003 */   addiu    $v0, $zero, 3
.L80240838:
/* C8E3E8 80240838 A622004E */  sh        $v0, 0x4e($s1)
.L8024083C:
/* C8E3EC 8024083C 86230048 */  lh        $v1, 0x48($s1)
/* C8E3F0 80240840 24020001 */  addiu     $v0, $zero, 1
/* C8E3F4 80240844 10620005 */  beq       $v1, $v0, .L8024085C
/* C8E3F8 80240848 24020002 */   addiu    $v0, $zero, 2
/* C8E3FC 8024084C 10620008 */  beq       $v1, $v0, .L80240870
/* C8E400 80240850 00000000 */   nop      
/* C8E404 80240854 0809022C */  j         .L802408B0
/* C8E408 80240858 00000000 */   nop      
.L8024085C:
/* C8E40C 8024085C C620002C */  lwc1      $f0, 0x2c($s1)
/* C8E410 80240860 C62C0030 */  lwc1      $f12, 0x30($s1)
/* C8E414 80240864 0C00A6C9 */  jal       clamp_angle
/* C8E418 80240868 460C0300 */   add.s    $f12, $f0, $f12
/* C8E41C 8024086C E620002C */  swc1      $f0, 0x2c($s1)
.L80240870:
/* C8E420 80240870 8E220054 */  lw        $v0, 0x54($s1)
/* C8E424 80240874 C620002C */  lwc1      $f0, 0x2c($s1)
/* C8E428 80240878 8C42000C */  lw        $v0, 0xc($v0)
/* C8E42C 8024087C E4400024 */  swc1      $f0, 0x24($v0)
/* C8E430 80240880 8E220054 */  lw        $v0, 0x54($s1)
/* C8E434 80240884 C6200018 */  lwc1      $f0, 0x18($s1)
/* C8E438 80240888 8C42000C */  lw        $v0, 0xc($v0)
/* C8E43C 8024088C E4400004 */  swc1      $f0, 4($v0)
/* C8E440 80240890 8E220054 */  lw        $v0, 0x54($s1)
/* C8E444 80240894 C6200004 */  lwc1      $f0, 4($s1)
/* C8E448 80240898 8C42000C */  lw        $v0, 0xc($v0)
/* C8E44C 8024089C E4400008 */  swc1      $f0, 8($v0)
/* C8E450 802408A0 8E220054 */  lw        $v0, 0x54($s1)
/* C8E454 802408A4 C6200020 */  lwc1      $f0, 0x20($s1)
/* C8E458 802408A8 8C42000C */  lw        $v0, 0xc($v0)
/* C8E45C 802408AC E440000C */  swc1      $f0, 0xc($v0)
.L802408B0:
/* C8E460 802408B0 8FBF0020 */  lw        $ra, 0x20($sp)
/* C8E464 802408B4 8FB1001C */  lw        $s1, 0x1c($sp)
/* C8E468 802408B8 8FB00018 */  lw        $s0, 0x18($sp)
/* C8E46C 802408BC 0000102D */  daddu     $v0, $zero, $zero
/* C8E470 802408C0 03E00008 */  jr        $ra
/* C8E474 802408C4 27BD0028 */   addiu    $sp, $sp, 0x28
