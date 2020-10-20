.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_A74870
/* A74870 80240000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A74874 80240004 AFB00010 */  sw        $s0, 0x10($sp)
/* A74878 80240008 0080802D */  daddu     $s0, $a0, $zero
/* A7487C 8024000C AFBF0014 */  sw        $ra, 0x14($sp)
/* A74880 80240010 8E0300A8 */  lw        $v1, 0xa8($s0)
/* A74884 80240014 8E020088 */  lw        $v0, 0x88($s0)
/* A74888 80240018 00621821 */  addu      $v1, $v1, $v0
/* A7488C 8024001C 04610004 */  bgez      $v1, .L80240030
/* A74890 80240020 AE0300A8 */   sw       $v1, 0xa8($s0)
/* A74894 80240024 3C020002 */  lui       $v0, 2
/* A74898 80240028 08090010 */  j         .L80240040
/* A7489C 8024002C 00621021 */   addu     $v0, $v1, $v0
.L80240030:
/* A748A0 80240030 3C040002 */  lui       $a0, 2
/* A748A4 80240034 0083102A */  slt       $v0, $a0, $v1
/* A748A8 80240038 10400002 */  beqz      $v0, .L80240044
/* A748AC 8024003C 00641023 */   subu     $v0, $v1, $a0
.L80240040:
/* A748B0 80240040 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240044:
/* A748B4 80240044 8E0300AC */  lw        $v1, 0xac($s0)
/* A748B8 80240048 8E02008C */  lw        $v0, 0x8c($s0)
/* A748BC 8024004C 00621821 */  addu      $v1, $v1, $v0
/* A748C0 80240050 04610004 */  bgez      $v1, .L80240064
/* A748C4 80240054 AE0300AC */   sw       $v1, 0xac($s0)
/* A748C8 80240058 3C020002 */  lui       $v0, 2
/* A748CC 8024005C 0809001D */  j         .L80240074
/* A748D0 80240060 00621021 */   addu     $v0, $v1, $v0
.L80240064:
/* A748D4 80240064 3C040002 */  lui       $a0, 2
/* A748D8 80240068 0083102A */  slt       $v0, $a0, $v1
/* A748DC 8024006C 10400002 */  beqz      $v0, .L80240078
/* A748E0 80240070 00641023 */   subu     $v0, $v1, $a0
.L80240074:
/* A748E4 80240074 AE0200AC */  sw        $v0, 0xac($s0)
.L80240078:
/* A748E8 80240078 8E0300B0 */  lw        $v1, 0xb0($s0)
/* A748EC 8024007C 8E020090 */  lw        $v0, 0x90($s0)
/* A748F0 80240080 00621821 */  addu      $v1, $v1, $v0
/* A748F4 80240084 04610004 */  bgez      $v1, .L80240098
/* A748F8 80240088 AE0300B0 */   sw       $v1, 0xb0($s0)
/* A748FC 8024008C 3C020002 */  lui       $v0, 2
/* A74900 80240090 0809002A */  j         .L802400A8
/* A74904 80240094 00621021 */   addu     $v0, $v1, $v0
.L80240098:
/* A74908 80240098 3C040002 */  lui       $a0, 2
/* A7490C 8024009C 0083102A */  slt       $v0, $a0, $v1
/* A74910 802400A0 10400002 */  beqz      $v0, .L802400AC
/* A74914 802400A4 00641023 */   subu     $v0, $v1, $a0
.L802400A8:
/* A74918 802400A8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802400AC:
/* A7491C 802400AC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* A74920 802400B0 8E020094 */  lw        $v0, 0x94($s0)
/* A74924 802400B4 00621821 */  addu      $v1, $v1, $v0
/* A74928 802400B8 04610004 */  bgez      $v1, .L802400CC
/* A7492C 802400BC AE0300B4 */   sw       $v1, 0xb4($s0)
/* A74930 802400C0 3C020002 */  lui       $v0, 2
/* A74934 802400C4 08090037 */  j         .L802400DC
/* A74938 802400C8 00621021 */   addu     $v0, $v1, $v0
.L802400CC:
/* A7493C 802400CC 3C040002 */  lui       $a0, 2
/* A74940 802400D0 0083102A */  slt       $v0, $a0, $v1
/* A74944 802400D4 10400002 */  beqz      $v0, .L802400E0
/* A74948 802400D8 00641023 */   subu     $v0, $v1, $a0
.L802400DC:
/* A7494C 802400DC AE0200B4 */  sw        $v0, 0xb4($s0)
.L802400E0:
/* A74950 802400E0 8E040084 */  lw        $a0, 0x84($s0)
/* A74954 802400E4 0C046F07 */  jal       set_main_pan_u
/* A74958 802400E8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* A7495C 802400EC 8E040084 */  lw        $a0, 0x84($s0)
/* A74960 802400F0 0C046F0D */  jal       set_main_pan_v
/* A74964 802400F4 8E0500AC */   lw       $a1, 0xac($s0)
/* A74968 802400F8 8E040084 */  lw        $a0, 0x84($s0)
/* A7496C 802400FC 0C046F13 */  jal       set_aux_pan_u
/* A74970 80240100 8E0500B0 */   lw       $a1, 0xb0($s0)
/* A74974 80240104 8E040084 */  lw        $a0, 0x84($s0)
/* A74978 80240108 0C046F19 */  jal       set_aux_pan_v
/* A7497C 8024010C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* A74980 80240110 8FBF0014 */  lw        $ra, 0x14($sp)
/* A74984 80240114 8FB00010 */  lw        $s0, 0x10($sp)
/* A74988 80240118 0000102D */  daddu     $v0, $zero, $zero
/* A7498C 8024011C 03E00008 */  jr        $ra
/* A74990 80240120 27BD0018 */   addiu    $sp, $sp, 0x18
