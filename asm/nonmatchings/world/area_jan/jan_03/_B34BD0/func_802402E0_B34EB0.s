.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802402E0_B34EB0
/* B34EB0 802402E0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* B34EB4 802402E4 AFB00010 */  sw        $s0, 0x10($sp)
/* B34EB8 802402E8 0080802D */  daddu     $s0, $a0, $zero
/* B34EBC 802402EC AFBF0014 */  sw        $ra, 0x14($sp)
/* B34EC0 802402F0 8E0300A8 */  lw        $v1, 0xa8($s0)
/* B34EC4 802402F4 8E020088 */  lw        $v0, 0x88($s0)
/* B34EC8 802402F8 00621821 */  addu      $v1, $v1, $v0
/* B34ECC 802402FC 04610004 */  bgez      $v1, .L80240310
/* B34ED0 80240300 AE0300A8 */   sw       $v1, 0xa8($s0)
/* B34ED4 80240304 3C020002 */  lui       $v0, 2
/* B34ED8 80240308 080900C8 */  j         .L80240320
/* B34EDC 8024030C 00621021 */   addu     $v0, $v1, $v0
.L80240310:
/* B34EE0 80240310 3C040002 */  lui       $a0, 2
/* B34EE4 80240314 0083102A */  slt       $v0, $a0, $v1
/* B34EE8 80240318 10400002 */  beqz      $v0, .L80240324
/* B34EEC 8024031C 00641023 */   subu     $v0, $v1, $a0
.L80240320:
/* B34EF0 80240320 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240324:
/* B34EF4 80240324 8E0300AC */  lw        $v1, 0xac($s0)
/* B34EF8 80240328 8E02008C */  lw        $v0, 0x8c($s0)
/* B34EFC 8024032C 00621821 */  addu      $v1, $v1, $v0
/* B34F00 80240330 04610004 */  bgez      $v1, .L80240344
/* B34F04 80240334 AE0300AC */   sw       $v1, 0xac($s0)
/* B34F08 80240338 3C020002 */  lui       $v0, 2
/* B34F0C 8024033C 080900D5 */  j         .L80240354
/* B34F10 80240340 00621021 */   addu     $v0, $v1, $v0
.L80240344:
/* B34F14 80240344 3C040002 */  lui       $a0, 2
/* B34F18 80240348 0083102A */  slt       $v0, $a0, $v1
/* B34F1C 8024034C 10400002 */  beqz      $v0, .L80240358
/* B34F20 80240350 00641023 */   subu     $v0, $v1, $a0
.L80240354:
/* B34F24 80240354 AE0200AC */  sw        $v0, 0xac($s0)
.L80240358:
/* B34F28 80240358 8E0300B0 */  lw        $v1, 0xb0($s0)
/* B34F2C 8024035C 8E020090 */  lw        $v0, 0x90($s0)
/* B34F30 80240360 00621821 */  addu      $v1, $v1, $v0
/* B34F34 80240364 04610004 */  bgez      $v1, .L80240378
/* B34F38 80240368 AE0300B0 */   sw       $v1, 0xb0($s0)
/* B34F3C 8024036C 3C020002 */  lui       $v0, 2
/* B34F40 80240370 080900E2 */  j         .L80240388
/* B34F44 80240374 00621021 */   addu     $v0, $v1, $v0
.L80240378:
/* B34F48 80240378 3C040002 */  lui       $a0, 2
/* B34F4C 8024037C 0083102A */  slt       $v0, $a0, $v1
/* B34F50 80240380 10400002 */  beqz      $v0, .L8024038C
/* B34F54 80240384 00641023 */   subu     $v0, $v1, $a0
.L80240388:
/* B34F58 80240388 AE0200B0 */  sw        $v0, 0xb0($s0)
.L8024038C:
/* B34F5C 8024038C 8E0300B4 */  lw        $v1, 0xb4($s0)
/* B34F60 80240390 8E020094 */  lw        $v0, 0x94($s0)
/* B34F64 80240394 00621821 */  addu      $v1, $v1, $v0
/* B34F68 80240398 04610004 */  bgez      $v1, .L802403AC
/* B34F6C 8024039C AE0300B4 */   sw       $v1, 0xb4($s0)
/* B34F70 802403A0 3C020002 */  lui       $v0, 2
/* B34F74 802403A4 080900EF */  j         .L802403BC
/* B34F78 802403A8 00621021 */   addu     $v0, $v1, $v0
.L802403AC:
/* B34F7C 802403AC 3C040002 */  lui       $a0, 2
/* B34F80 802403B0 0083102A */  slt       $v0, $a0, $v1
/* B34F84 802403B4 10400002 */  beqz      $v0, .L802403C0
/* B34F88 802403B8 00641023 */   subu     $v0, $v1, $a0
.L802403BC:
/* B34F8C 802403BC AE0200B4 */  sw        $v0, 0xb4($s0)
.L802403C0:
/* B34F90 802403C0 8E040084 */  lw        $a0, 0x84($s0)
/* B34F94 802403C4 0C046F07 */  jal       set_main_pan_u
/* B34F98 802403C8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* B34F9C 802403CC 8E040084 */  lw        $a0, 0x84($s0)
/* B34FA0 802403D0 0C046F0D */  jal       set_main_pan_v
/* B34FA4 802403D4 8E0500AC */   lw       $a1, 0xac($s0)
/* B34FA8 802403D8 8E040084 */  lw        $a0, 0x84($s0)
/* B34FAC 802403DC 0C046F13 */  jal       set_aux_pan_u
/* B34FB0 802403E0 8E0500B0 */   lw       $a1, 0xb0($s0)
/* B34FB4 802403E4 8E040084 */  lw        $a0, 0x84($s0)
/* B34FB8 802403E8 0C046F19 */  jal       set_aux_pan_v
/* B34FBC 802403EC 8E0500B4 */   lw       $a1, 0xb4($s0)
/* B34FC0 802403F0 8FBF0014 */  lw        $ra, 0x14($sp)
/* B34FC4 802403F4 8FB00010 */  lw        $s0, 0x10($sp)
/* B34FC8 802403F8 0000102D */  daddu     $v0, $zero, $zero
/* B34FCC 802403FC 03E00008 */  jr        $ra
/* B34FD0 80240400 27BD0018 */   addiu    $sp, $sp, 0x18
