.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240268_986748
/* 986748 80240268 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 98674C 8024026C AFB00010 */  sw        $s0, 0x10($sp)
/* 986750 80240270 0080802D */  daddu     $s0, $a0, $zero
/* 986754 80240274 AFBF0014 */  sw        $ra, 0x14($sp)
/* 986758 80240278 8E02000C */  lw        $v0, 0xc($s0)
/* 98675C 8024027C 0C0B1EAF */  jal       get_variable
/* 986760 80240280 8C450000 */   lw       $a1, ($v0)
/* 986764 80240284 00021140 */  sll       $v0, $v0, 5
/* 986768 80240288 AE000084 */  sw        $zero, 0x84($s0)
/* 98676C 8024028C 3C018008 */  lui       $at, %hi(gItemTable+0x18)
/* 986770 80240290 00220821 */  addu      $at, $at, $v0
/* 986774 80240294 942278F8 */  lhu       $v0, %lo(gItemTable+0x18)($at)
/* 986778 80240298 30420040 */  andi      $v0, $v0, 0x40
/* 98677C 8024029C 10400002 */  beqz      $v0, .L802402A8
/* 986780 802402A0 24020001 */   addiu    $v0, $zero, 1
/* 986784 802402A4 AE020084 */  sw        $v0, 0x84($s0)
.L802402A8:
/* 986788 802402A8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 98678C 802402AC 8FB00010 */  lw        $s0, 0x10($sp)
/* 986790 802402B0 24020002 */  addiu     $v0, $zero, 2
/* 986794 802402B4 03E00008 */  jr        $ra
/* 986798 802402B8 27BD0018 */   addiu    $sp, $sp, 0x18
