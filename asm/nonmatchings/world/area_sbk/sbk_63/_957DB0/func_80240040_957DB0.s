.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240040_957DB0
/* 957DB0 80240040 8C830148 */  lw        $v1, 0x148($a0)
/* 957DB4 80240044 24020003 */  addiu     $v0, $zero, 3
/* 957DB8 80240048 A06200B5 */  sb        $v0, 0xb5($v1)
/* 957DBC 8024004C 03E00008 */  jr        $ra
/* 957DC0 80240050 24020002 */   addiu    $v0, $zero, 2
/* 957DC4 80240054 00000000 */  nop       
/* 957DC8 80240058 00000000 */  nop       
/* 957DCC 8024005C 00000000 */  nop       
