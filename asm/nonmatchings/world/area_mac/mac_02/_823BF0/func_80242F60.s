.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242F60
/* 826220 80242F60 27BDFE48 */  addiu     $sp, $sp, -0x1b8
/* 826224 80242F64 AFBF01B0 */  sw        $ra, 0x1b0($sp)
/* 826228 80242F68 8C82000C */  lw        $v0, 0xc($a0)
/* 82622C 80242F6C 0C0B1EAF */  jal       get_variable
/* 826230 80242F70 8C450000 */   lw       $a1, ($v0)
/* 826234 80242F74 0040302D */  daddu     $a2, $v0, $zero
/* 826238 80242F78 27A30010 */  addiu     $v1, $sp, 0x10
/* 82623C 80242F7C 3C028025 */  lui       $v0, 0x8025
/* 826240 80242F80 2442E3A0 */  addiu     $v0, $v0, -0x1c60
/* 826244 80242F84 244400D0 */  addiu     $a0, $v0, 0xd0
.L80242F88:
/* 826248 80242F88 8C470000 */  lw        $a3, ($v0)
/* 82624C 80242F8C 8C480004 */  lw        $t0, 4($v0)
/* 826250 80242F90 8C490008 */  lw        $t1, 8($v0)
/* 826254 80242F94 8C4A000C */  lw        $t2, 0xc($v0)
/* 826258 80242F98 AC670000 */  sw        $a3, ($v1)
/* 82625C 80242F9C AC680004 */  sw        $t0, 4($v1)
/* 826260 80242FA0 AC690008 */  sw        $t1, 8($v1)
/* 826264 80242FA4 AC6A000C */  sw        $t2, 0xc($v1)
/* 826268 80242FA8 24420010 */  addiu     $v0, $v0, 0x10
/* 82626C 80242FAC 1444FFF6 */  bne       $v0, $a0, .L80242F88
/* 826270 80242FB0 24630010 */   addiu    $v1, $v1, 0x10
/* 826274 80242FB4 27A300E0 */  addiu     $v1, $sp, 0xe0
/* 826278 80242FB8 3C028025 */  lui       $v0, 0x8025
/* 82627C 80242FBC 2442E470 */  addiu     $v0, $v0, -0x1b90
/* 826280 80242FC0 244400D0 */  addiu     $a0, $v0, 0xd0
.L80242FC4:
/* 826284 80242FC4 8C470000 */  lw        $a3, ($v0)
/* 826288 80242FC8 8C480004 */  lw        $t0, 4($v0)
/* 82628C 80242FCC 8C490008 */  lw        $t1, 8($v0)
/* 826290 80242FD0 8C4A000C */  lw        $t2, 0xc($v0)
/* 826294 80242FD4 AC670000 */  sw        $a3, ($v1)
/* 826298 80242FD8 AC680004 */  sw        $t0, 4($v1)
/* 82629C 80242FDC AC690008 */  sw        $t1, 8($v1)
/* 8262A0 80242FE0 AC6A000C */  sw        $t2, 0xc($v1)
/* 8262A4 80242FE4 24420010 */  addiu     $v0, $v0, 0x10
/* 8262A8 80242FE8 1444FFF6 */  bne       $v0, $a0, .L80242FC4
/* 8262AC 80242FEC 24630010 */   addiu    $v1, $v1, 0x10
/* 8262B0 80242FF0 0000202D */  daddu     $a0, $zero, $zero
/* 8262B4 80242FF4 27A500E0 */  addiu     $a1, $sp, 0xe0
/* 8262B8 80242FF8 27A30010 */  addiu     $v1, $sp, 0x10
.L80242FFC:
/* 8262BC 80242FFC 8C620000 */  lw        $v0, ($v1)
/* 8262C0 80243000 54C20007 */  bnel      $a2, $v0, .L80243020
/* 8262C4 80243004 24A50004 */   addiu    $a1, $a1, 4
/* 8262C8 80243008 0000202D */  daddu     $a0, $zero, $zero
/* 8262CC 8024300C 8CA50000 */  lw        $a1, ($a1)
/* 8262D0 80243010 0C0B2026 */  jal       set_variable
/* 8262D4 80243014 24060001 */   addiu    $a2, $zero, 1
/* 8262D8 80243018 08090C0C */  j         .L80243030
/* 8262DC 8024301C 00000000 */   nop      
.L80243020:
/* 8262E0 80243020 24840001 */  addiu     $a0, $a0, 1
/* 8262E4 80243024 28820034 */  slti      $v0, $a0, 0x34
/* 8262E8 80243028 1440FFF4 */  bnez      $v0, .L80242FFC
/* 8262EC 8024302C 24630004 */   addiu    $v1, $v1, 4
.L80243030:
/* 8262F0 80243030 8FBF01B0 */  lw        $ra, 0x1b0($sp)
/* 8262F4 80243034 24020002 */  addiu     $v0, $zero, 2
/* 8262F8 80243038 03E00008 */  jr        $ra
/* 8262FC 8024303C 27BD01B8 */   addiu    $sp, $sp, 0x1b8
