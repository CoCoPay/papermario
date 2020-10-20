.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802407A4
/* A64834 802407A4 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* A64838 802407A8 AFB3001C */  sw        $s3, 0x1c($sp)
/* A6483C 802407AC 0080982D */  daddu     $s3, $a0, $zero
/* A64840 802407B0 AFBF0020 */  sw        $ra, 0x20($sp)
/* A64844 802407B4 AFB20018 */  sw        $s2, 0x18($sp)
/* A64848 802407B8 AFB10014 */  sw        $s1, 0x14($sp)
/* A6484C 802407BC AFB00010 */  sw        $s0, 0x10($sp)
/* A64850 802407C0 8E720148 */  lw        $s2, 0x148($s3)
/* A64854 802407C4 0C00EABB */  jal       get_npc_unsafe
/* A64858 802407C8 86440008 */   lh       $a0, 8($s2)
/* A6485C 802407CC 0040802D */  daddu     $s0, $v0, $zero
/* A64860 802407D0 8603008E */  lh        $v1, 0x8e($s0)
/* A64864 802407D4 3C118024 */  lui       $s1, 0x8024
/* A64868 802407D8 26312050 */  addiu     $s1, $s1, 0x2050
/* A6486C 802407DC 00031040 */  sll       $v0, $v1, 1
/* A64870 802407E0 00431021 */  addu      $v0, $v0, $v1
/* A64874 802407E4 00021080 */  sll       $v0, $v0, 2
/* A64878 802407E8 3C018024 */  lui       $at, 0x8024
/* A6487C 802407EC 00220821 */  addu      $at, $at, $v0
/* A64880 802407F0 C4202050 */  lwc1      $f0, 0x2050($at)
/* A64884 802407F4 00031040 */  sll       $v0, $v1, 1
/* A64888 802407F8 00431021 */  addu      $v0, $v0, $v1
/* A6488C 802407FC 00021080 */  sll       $v0, $v0, 2
/* A64890 80240800 E6000054 */  swc1      $f0, 0x54($s0)
/* A64894 80240804 3C018024 */  lui       $at, 0x8024
/* A64898 80240808 00220821 */  addu      $at, $at, $v0
/* A6489C 8024080C C4202054 */  lwc1      $f0, 0x2054($at)
/* A648A0 80240810 00031040 */  sll       $v0, $v1, 1
/* A648A4 80240814 00431021 */  addu      $v0, $v0, $v1
/* A648A8 80240818 9603008E */  lhu       $v1, 0x8e($s0)
/* A648AC 8024081C 00021080 */  sll       $v0, $v0, 2
/* A648B0 80240820 E6000058 */  swc1      $f0, 0x58($s0)
/* A648B4 80240824 3C018024 */  lui       $at, 0x8024
/* A648B8 80240828 00220821 */  addu      $at, $at, $v0
/* A648BC 8024082C 90222058 */  lbu       $v0, 0x2058($at)
/* A648C0 80240830 24630001 */  addiu     $v1, $v1, 1
/* A648C4 80240834 A603008E */  sh        $v1, 0x8e($s0)
/* A648C8 80240838 00031C00 */  sll       $v1, $v1, 0x10
/* A648CC 8024083C 00031C03 */  sra       $v1, $v1, 0x10
/* A648D0 80240840 A20200AC */  sb        $v0, 0xac($s0)
/* A648D4 80240844 24020004 */  addiu     $v0, $zero, 4
/* A648D8 80240848 14620007 */  bne       $v1, $v0, .L80240868
/* A648DC 8024084C 00000000 */   nop      
/* A648E0 80240850 0C00EAFF */  jal       disable_npc_shadow
/* A648E4 80240854 0200202D */   daddu    $a0, $s0, $zero
/* A648E8 80240858 8E420000 */  lw        $v0, ($s2)
/* A648EC 8024085C 3C031F10 */  lui       $v1, 0x1f10
/* A648F0 80240860 00431025 */  or        $v0, $v0, $v1
/* A648F4 80240864 AE420000 */  sw        $v0, ($s2)
.L80240868:
/* A648F8 80240868 8602008E */  lh        $v0, 0x8e($s0)
/* A648FC 8024086C 00021840 */  sll       $v1, $v0, 1
/* A64900 80240870 00621821 */  addu      $v1, $v1, $v0
/* A64904 80240874 00031880 */  sll       $v1, $v1, 2
/* A64908 80240878 00711821 */  addu      $v1, $v1, $s1
/* A6490C 8024087C 90620008 */  lbu       $v0, 8($v1)
/* A64910 80240880 1440000C */  bnez      $v0, .L802408B4
/* A64914 80240884 240200FF */   addiu    $v0, $zero, 0xff
/* A64918 80240888 A20200AC */  sb        $v0, 0xac($s0)
/* A6491C 8024088C 24020005 */  addiu     $v0, $zero, 5
/* A64920 80240890 8E030000 */  lw        $v1, ($s0)
/* A64924 80240894 3C013F80 */  lui       $at, 0x3f80
/* A64928 80240898 44810000 */  mtc1      $at, $f0
/* A6492C 8024089C 34630002 */  ori       $v1, $v1, 2
/* A64930 802408A0 E6000054 */  swc1      $f0, 0x54($s0)
/* A64934 802408A4 E6000058 */  swc1      $f0, 0x58($s0)
/* A64938 802408A8 E600005C */  swc1      $f0, 0x5c($s0)
/* A6493C 802408AC AE030000 */  sw        $v1, ($s0)
/* A64940 802408B0 AE620070 */  sw        $v0, 0x70($s3)
.L802408B4:
/* A64944 802408B4 8FBF0020 */  lw        $ra, 0x20($sp)
/* A64948 802408B8 8FB3001C */  lw        $s3, 0x1c($sp)
/* A6494C 802408BC 8FB20018 */  lw        $s2, 0x18($sp)
/* A64950 802408C0 8FB10014 */  lw        $s1, 0x14($sp)
/* A64954 802408C4 8FB00010 */  lw        $s0, 0x10($sp)
/* A64958 802408C8 03E00008 */  jr        $ra
/* A6495C 802408CC 27BD0028 */   addiu    $sp, $sp, 0x28
