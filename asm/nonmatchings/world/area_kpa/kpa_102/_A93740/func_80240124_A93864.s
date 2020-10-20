.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240124_A93864
/* A93864 80240124 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A93868 80240128 AFB00010 */  sw        $s0, 0x10($sp)
/* A9386C 8024012C 0080802D */  daddu     $s0, $a0, $zero
/* A93870 80240130 10A00005 */  beqz      $a1, .L80240148
/* A93874 80240134 AFBF0014 */   sw       $ra, 0x14($sp)
/* A93878 80240138 AE000070 */  sw        $zero, 0x70($s0)
/* A9387C 8024013C AE000074 */  sw        $zero, 0x74($s0)
/* A93880 80240140 AE000078 */  sw        $zero, 0x78($s0)
/* A93884 80240144 AE00007C */  sw        $zero, 0x7c($s0)
.L80240148:
/* A93888 80240148 8E020070 */  lw        $v0, 0x70($s0)
/* A9388C 8024014C 1440000E */  bnez      $v0, .L80240188
/* A93890 80240150 00000000 */   nop      
/* A93894 80240154 8E0300A8 */  lw        $v1, 0xa8($s0)
/* A93898 80240158 8E020088 */  lw        $v0, 0x88($s0)
/* A9389C 8024015C 00621821 */  addu      $v1, $v1, $v0
/* A938A0 80240160 04610004 */  bgez      $v1, .L80240174
/* A938A4 80240164 AE0300A8 */   sw       $v1, 0xa8($s0)
/* A938A8 80240168 3C020002 */  lui       $v0, 2
/* A938AC 8024016C 08090061 */  j         .L80240184
/* A938B0 80240170 00621021 */   addu     $v0, $v1, $v0
.L80240174:
/* A938B4 80240174 3C040002 */  lui       $a0, 2
/* A938B8 80240178 0083102A */  slt       $v0, $a0, $v1
/* A938BC 8024017C 10400002 */  beqz      $v0, .L80240188
/* A938C0 80240180 00641023 */   subu     $v0, $v1, $a0
.L80240184:
/* A938C4 80240184 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240188:
/* A938C8 80240188 8E020074 */  lw        $v0, 0x74($s0)
/* A938CC 8024018C 1440000E */  bnez      $v0, .L802401C8
/* A938D0 80240190 00000000 */   nop      
/* A938D4 80240194 8E0300AC */  lw        $v1, 0xac($s0)
/* A938D8 80240198 8E02008C */  lw        $v0, 0x8c($s0)
/* A938DC 8024019C 00621821 */  addu      $v1, $v1, $v0
/* A938E0 802401A0 04610004 */  bgez      $v1, .L802401B4
/* A938E4 802401A4 AE0300AC */   sw       $v1, 0xac($s0)
/* A938E8 802401A8 3C020002 */  lui       $v0, 2
/* A938EC 802401AC 08090071 */  j         .L802401C4
/* A938F0 802401B0 00621021 */   addu     $v0, $v1, $v0
.L802401B4:
/* A938F4 802401B4 3C040002 */  lui       $a0, 2
/* A938F8 802401B8 0083102A */  slt       $v0, $a0, $v1
/* A938FC 802401BC 10400002 */  beqz      $v0, .L802401C8
/* A93900 802401C0 00641023 */   subu     $v0, $v1, $a0
.L802401C4:
/* A93904 802401C4 AE0200AC */  sw        $v0, 0xac($s0)
.L802401C8:
/* A93908 802401C8 8E020078 */  lw        $v0, 0x78($s0)
/* A9390C 802401CC 1440000E */  bnez      $v0, .L80240208
/* A93910 802401D0 00000000 */   nop      
/* A93914 802401D4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* A93918 802401D8 8E020090 */  lw        $v0, 0x90($s0)
/* A9391C 802401DC 00621821 */  addu      $v1, $v1, $v0
/* A93920 802401E0 04610004 */  bgez      $v1, .L802401F4
/* A93924 802401E4 AE0300B0 */   sw       $v1, 0xb0($s0)
/* A93928 802401E8 3C020002 */  lui       $v0, 2
/* A9392C 802401EC 08090081 */  j         .L80240204
/* A93930 802401F0 00621021 */   addu     $v0, $v1, $v0
.L802401F4:
/* A93934 802401F4 3C040002 */  lui       $a0, 2
/* A93938 802401F8 0083102A */  slt       $v0, $a0, $v1
/* A9393C 802401FC 10400002 */  beqz      $v0, .L80240208
/* A93940 80240200 00641023 */   subu     $v0, $v1, $a0
.L80240204:
/* A93944 80240204 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240208:
/* A93948 80240208 8E02007C */  lw        $v0, 0x7c($s0)
/* A9394C 8024020C 1440000E */  bnez      $v0, .L80240248
/* A93950 80240210 00000000 */   nop      
/* A93954 80240214 8E0300B4 */  lw        $v1, 0xb4($s0)
/* A93958 80240218 8E020094 */  lw        $v0, 0x94($s0)
/* A9395C 8024021C 00621821 */  addu      $v1, $v1, $v0
/* A93960 80240220 04610004 */  bgez      $v1, .L80240234
/* A93964 80240224 AE0300B4 */   sw       $v1, 0xb4($s0)
/* A93968 80240228 3C020002 */  lui       $v0, 2
/* A9396C 8024022C 08090091 */  j         .L80240244
/* A93970 80240230 00621021 */   addu     $v0, $v1, $v0
.L80240234:
/* A93974 80240234 3C040002 */  lui       $a0, 2
/* A93978 80240238 0083102A */  slt       $v0, $a0, $v1
/* A9397C 8024023C 10400002 */  beqz      $v0, .L80240248
/* A93980 80240240 00641023 */   subu     $v0, $v1, $a0
.L80240244:
/* A93984 80240244 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240248:
/* A93988 80240248 8E040084 */  lw        $a0, 0x84($s0)
/* A9398C 8024024C 0C046F07 */  jal       set_main_pan_u
/* A93990 80240250 8E0500A8 */   lw       $a1, 0xa8($s0)
/* A93994 80240254 8E040084 */  lw        $a0, 0x84($s0)
/* A93998 80240258 0C046F0D */  jal       set_main_pan_v
/* A9399C 8024025C 8E0500AC */   lw       $a1, 0xac($s0)
/* A939A0 80240260 8E040084 */  lw        $a0, 0x84($s0)
/* A939A4 80240264 0C046F13 */  jal       set_aux_pan_u
/* A939A8 80240268 8E0500B0 */   lw       $a1, 0xb0($s0)
/* A939AC 8024026C 8E040084 */  lw        $a0, 0x84($s0)
/* A939B0 80240270 0C046F19 */  jal       set_aux_pan_v
/* A939B4 80240274 8E0500B4 */   lw       $a1, 0xb4($s0)
/* A939B8 80240278 8E020070 */  lw        $v0, 0x70($s0)
/* A939BC 8024027C 8E030078 */  lw        $v1, 0x78($s0)
/* A939C0 80240280 8E040098 */  lw        $a0, 0x98($s0)
/* A939C4 80240284 24420001 */  addiu     $v0, $v0, 1
/* A939C8 80240288 AE020070 */  sw        $v0, 0x70($s0)
/* A939CC 8024028C 8E020074 */  lw        $v0, 0x74($s0)
/* A939D0 80240290 24630001 */  addiu     $v1, $v1, 1
/* A939D4 80240294 AE030078 */  sw        $v1, 0x78($s0)
/* A939D8 80240298 8E030070 */  lw        $v1, 0x70($s0)
/* A939DC 8024029C 24420001 */  addiu     $v0, $v0, 1
/* A939E0 802402A0 AE020074 */  sw        $v0, 0x74($s0)
/* A939E4 802402A4 8E02007C */  lw        $v0, 0x7c($s0)
/* A939E8 802402A8 0064182A */  slt       $v1, $v1, $a0
/* A939EC 802402AC 24420001 */  addiu     $v0, $v0, 1
/* A939F0 802402B0 14600002 */  bnez      $v1, .L802402BC
/* A939F4 802402B4 AE02007C */   sw       $v0, 0x7c($s0)
/* A939F8 802402B8 AE000070 */  sw        $zero, 0x70($s0)
.L802402BC:
/* A939FC 802402BC 8E020074 */  lw        $v0, 0x74($s0)
/* A93A00 802402C0 8E03009C */  lw        $v1, 0x9c($s0)
/* A93A04 802402C4 0043102A */  slt       $v0, $v0, $v1
/* A93A08 802402C8 50400001 */  beql      $v0, $zero, .L802402D0
/* A93A0C 802402CC AE000074 */   sw       $zero, 0x74($s0)
.L802402D0:
/* A93A10 802402D0 8E020078 */  lw        $v0, 0x78($s0)
/* A93A14 802402D4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* A93A18 802402D8 0043102A */  slt       $v0, $v0, $v1
/* A93A1C 802402DC 50400001 */  beql      $v0, $zero, .L802402E4
/* A93A20 802402E0 AE000078 */   sw       $zero, 0x78($s0)
.L802402E4:
/* A93A24 802402E4 8E02007C */  lw        $v0, 0x7c($s0)
/* A93A28 802402E8 8E0300A4 */  lw        $v1, 0xa4($s0)
/* A93A2C 802402EC 0043102A */  slt       $v0, $v0, $v1
/* A93A30 802402F0 50400001 */  beql      $v0, $zero, .L802402F8
/* A93A34 802402F4 AE00007C */   sw       $zero, 0x7c($s0)
.L802402F8:
/* A93A38 802402F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* A93A3C 802402FC 8FB00010 */  lw        $s0, 0x10($sp)
/* A93A40 80240300 0000102D */  daddu     $v0, $zero, $zero
/* A93A44 80240304 03E00008 */  jr        $ra
/* A93A48 80240308 27BD0018 */   addiu    $sp, $sp, 0x18
/* A93A4C 8024030C 00000000 */  nop       
