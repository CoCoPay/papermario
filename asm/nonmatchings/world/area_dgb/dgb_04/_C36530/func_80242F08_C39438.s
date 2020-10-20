.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242F08_C39438
/* C39438 80242F08 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* C3943C 80242F0C AFB10014 */  sw        $s1, 0x14($sp)
/* C39440 80242F10 0080882D */  daddu     $s1, $a0, $zero
/* C39444 80242F14 AFB20018 */  sw        $s2, 0x18($sp)
/* C39448 80242F18 AFBF001C */  sw        $ra, 0x1c($sp)
/* C3944C 80242F1C AFB00010 */  sw        $s0, 0x10($sp)
/* C39450 80242F20 8E30000C */  lw        $s0, 0xc($s1)
/* C39454 80242F24 10A00010 */  beqz      $a1, .L80242F68
/* C39458 80242F28 0000902D */   daddu    $s2, $zero, $zero
/* C3945C 80242F2C 8E050000 */  lw        $a1, ($s0)
/* C39460 80242F30 0C0B1EAF */  jal       get_variable
/* C39464 80242F34 26100004 */   addiu    $s0, $s0, 4
/* C39468 80242F38 AE220084 */  sw        $v0, 0x84($s1)
/* C3946C 80242F3C 8E050000 */  lw        $a1, ($s0)
/* C39470 80242F40 0C0B1EAF */  jal       get_variable
/* C39474 80242F44 0220202D */   daddu    $a0, $s1, $zero
/* C39478 80242F48 0240202D */  daddu     $a0, $s2, $zero
/* C3947C 80242F4C 240500D0 */  addiu     $a1, $zero, 0xd0
/* C39480 80242F50 00A0302D */  daddu     $a2, $a1, $zero
/* C39484 80242F54 00A0382D */  daddu     $a3, $a1, $zero
/* C39488 80242F58 AE220088 */  sw        $v0, 0x88($s1)
/* C3948C 80242F5C AE200070 */  sw        $zero, 0x70($s1)
/* C39490 80242F60 0C04DF84 */  jal       func_80137E10
/* C39494 80242F64 AE200074 */   sw       $zero, 0x74($s1)
.L80242F68:
/* C39498 80242F68 8E230070 */  lw        $v1, 0x70($s1)
/* C3949C 80242F6C 24040001 */  addiu     $a0, $zero, 1
/* C394A0 80242F70 10640019 */  beq       $v1, $a0, .L80242FD8
/* C394A4 80242F74 28620002 */   slti     $v0, $v1, 2
/* C394A8 80242F78 10400005 */  beqz      $v0, .L80242F90
/* C394AC 80242F7C 24020002 */   addiu    $v0, $zero, 2
/* C394B0 80242F80 10600007 */  beqz      $v1, .L80242FA0
/* C394B4 80242F84 240500FF */   addiu    $a1, $zero, 0xff
/* C394B8 80242F88 08090C06 */  j         .L80243018
/* C394BC 80242F8C 00000000 */   nop      
.L80242F90:
/* C394C0 80242F90 10620019 */  beq       $v1, $v0, .L80242FF8
/* C394C4 80242F94 00000000 */   nop      
/* C394C8 80242F98 08090C06 */  j         .L80243018
/* C394CC 80242F9C 00000000 */   nop      
.L80242FA0:
/* C394D0 80242FA0 8E220074 */  lw        $v0, 0x74($s1)
/* C394D4 80242FA4 14450004 */  bne       $v0, $a1, .L80242FB8
/* C394D8 80242FA8 00000000 */   nop      
/* C394DC 80242FAC AE240070 */  sw        $a0, 0x70($s1)
/* C394E0 80242FB0 AE200078 */  sw        $zero, 0x78($s1)
/* C394E4 80242FB4 8E220074 */  lw        $v0, 0x74($s1)
.L80242FB8:
/* C394E8 80242FB8 8E230084 */  lw        $v1, 0x84($s1)
/* C394EC 80242FBC 00431021 */  addu      $v0, $v0, $v1
/* C394F0 80242FC0 AE220074 */  sw        $v0, 0x74($s1)
/* C394F4 80242FC4 28420100 */  slti      $v0, $v0, 0x100
/* C394F8 80242FC8 50400013 */  beql      $v0, $zero, .L80243018
/* C394FC 80242FCC AE250074 */   sw       $a1, 0x74($s1)
/* C39500 80242FD0 08090C06 */  j         .L80243018
/* C39504 80242FD4 00000000 */   nop      
.L80242FD8:
/* C39508 80242FD8 8E220078 */  lw        $v0, 0x78($s1)
/* C3950C 80242FDC 24420001 */  addiu     $v0, $v0, 1
/* C39510 80242FE0 AE220078 */  sw        $v0, 0x78($s1)
/* C39514 80242FE4 28420002 */  slti      $v0, $v0, 2
/* C39518 80242FE8 1440000B */  bnez      $v0, .L80243018
/* C3951C 80242FEC 24020002 */   addiu    $v0, $zero, 2
/* C39520 80242FF0 08090C06 */  j         .L80243018
/* C39524 80242FF4 AE220070 */   sw       $v0, 0x70($s1)
.L80242FF8:
/* C39528 80242FF8 8E230074 */  lw        $v1, 0x74($s1)
/* C3952C 80242FFC 50600001 */  beql      $v1, $zero, .L80243004
/* C39530 80243000 24120001 */   addiu    $s2, $zero, 1
.L80243004:
/* C39534 80243004 8E220088 */  lw        $v0, 0x88($s1)
/* C39538 80243008 00621023 */  subu      $v0, $v1, $v0
/* C3953C 8024300C 04410002 */  bgez      $v0, .L80243018
/* C39540 80243010 AE220074 */   sw       $v0, 0x74($s1)
/* C39544 80243014 AE200074 */  sw        $zero, 0x74($s1)
.L80243018:
/* C39548 80243018 C6200074 */  lwc1      $f0, 0x74($s1)
/* C3954C 8024301C 46800020 */  cvt.s.w   $f0, $f0
/* C39550 80243020 44050000 */  mfc1      $a1, $f0
/* C39554 80243024 0C04DF62 */  jal       func_80137D88
/* C39558 80243028 24040001 */   addiu    $a0, $zero, 1
/* C3955C 8024302C 0240102D */  daddu     $v0, $s2, $zero
/* C39560 80243030 8FBF001C */  lw        $ra, 0x1c($sp)
/* C39564 80243034 8FB20018 */  lw        $s2, 0x18($sp)
/* C39568 80243038 8FB10014 */  lw        $s1, 0x14($sp)
/* C3956C 8024303C 8FB00010 */  lw        $s0, 0x10($sp)
/* C39570 80243040 03E00008 */  jr        $ra
/* C39574 80243044 27BD0020 */   addiu    $sp, $sp, 0x20
