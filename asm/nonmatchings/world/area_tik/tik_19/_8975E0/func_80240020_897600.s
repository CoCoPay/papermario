.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240020_897600
/* 897600 80240020 3C028016 */  lui       $v0, 0x8016
/* 897604 80240024 8442A552 */  lh        $v0, -0x5aae($v0)
/* 897608 80240028 AC820084 */  sw        $v0, 0x84($a0)
/* 89760C 8024002C 03E00008 */  jr        $ra
/* 897610 80240030 24020002 */   addiu    $v0, $zero, 2
