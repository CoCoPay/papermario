.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240144
/* A3F884 80240144 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A3F888 80240148 AFB00010 */  sw        $s0, 0x10($sp)
/* A3F88C 8024014C 0080802D */  daddu     $s0, $a0, $zero
/* A3F890 80240150 10A00005 */  beqz      $a1, .L80240168
/* A3F894 80240154 AFBF0014 */   sw       $ra, 0x14($sp)
/* A3F898 80240158 AE000070 */  sw        $zero, 0x70($s0)
/* A3F89C 8024015C AE000074 */  sw        $zero, 0x74($s0)
/* A3F8A0 80240160 AE000078 */  sw        $zero, 0x78($s0)
/* A3F8A4 80240164 AE00007C */  sw        $zero, 0x7c($s0)
.L80240168:
/* A3F8A8 80240168 8E020070 */  lw        $v0, 0x70($s0)
/* A3F8AC 8024016C 1440000E */  bnez      $v0, .L802401A8
/* A3F8B0 80240170 00000000 */   nop      
/* A3F8B4 80240174 8E0300A8 */  lw        $v1, 0xa8($s0)
/* A3F8B8 80240178 8E020088 */  lw        $v0, 0x88($s0)
/* A3F8BC 8024017C 00621821 */  addu      $v1, $v1, $v0
/* A3F8C0 80240180 04610004 */  bgez      $v1, .L80240194
/* A3F8C4 80240184 AE0300A8 */   sw       $v1, 0xa8($s0)
/* A3F8C8 80240188 3C020002 */  lui       $v0, 2
/* A3F8CC 8024018C 08090069 */  j         .L802401A4
/* A3F8D0 80240190 00621021 */   addu     $v0, $v1, $v0
.L80240194:
/* A3F8D4 80240194 3C040002 */  lui       $a0, 2
/* A3F8D8 80240198 0083102A */  slt       $v0, $a0, $v1
/* A3F8DC 8024019C 10400002 */  beqz      $v0, .L802401A8
/* A3F8E0 802401A0 00641023 */   subu     $v0, $v1, $a0
.L802401A4:
/* A3F8E4 802401A4 AE0200A8 */  sw        $v0, 0xa8($s0)
.L802401A8:
/* A3F8E8 802401A8 8E020074 */  lw        $v0, 0x74($s0)
/* A3F8EC 802401AC 1440000E */  bnez      $v0, .L802401E8
/* A3F8F0 802401B0 00000000 */   nop      
/* A3F8F4 802401B4 8E0300AC */  lw        $v1, 0xac($s0)
/* A3F8F8 802401B8 8E02008C */  lw        $v0, 0x8c($s0)
/* A3F8FC 802401BC 00621821 */  addu      $v1, $v1, $v0
/* A3F900 802401C0 04610004 */  bgez      $v1, .L802401D4
/* A3F904 802401C4 AE0300AC */   sw       $v1, 0xac($s0)
/* A3F908 802401C8 3C020002 */  lui       $v0, 2
/* A3F90C 802401CC 08090079 */  j         .L802401E4
/* A3F910 802401D0 00621021 */   addu     $v0, $v1, $v0
.L802401D4:
/* A3F914 802401D4 3C040002 */  lui       $a0, 2
/* A3F918 802401D8 0083102A */  slt       $v0, $a0, $v1
/* A3F91C 802401DC 10400002 */  beqz      $v0, .L802401E8
/* A3F920 802401E0 00641023 */   subu     $v0, $v1, $a0
.L802401E4:
/* A3F924 802401E4 AE0200AC */  sw        $v0, 0xac($s0)
.L802401E8:
/* A3F928 802401E8 8E020078 */  lw        $v0, 0x78($s0)
/* A3F92C 802401EC 1440000E */  bnez      $v0, .L80240228
/* A3F930 802401F0 00000000 */   nop      
/* A3F934 802401F4 8E0300B0 */  lw        $v1, 0xb0($s0)
/* A3F938 802401F8 8E020090 */  lw        $v0, 0x90($s0)
/* A3F93C 802401FC 00621821 */  addu      $v1, $v1, $v0
/* A3F940 80240200 04610004 */  bgez      $v1, .L80240214
/* A3F944 80240204 AE0300B0 */   sw       $v1, 0xb0($s0)
/* A3F948 80240208 3C020002 */  lui       $v0, 2
/* A3F94C 8024020C 08090089 */  j         .L80240224
/* A3F950 80240210 00621021 */   addu     $v0, $v1, $v0
.L80240214:
/* A3F954 80240214 3C040002 */  lui       $a0, 2
/* A3F958 80240218 0083102A */  slt       $v0, $a0, $v1
/* A3F95C 8024021C 10400002 */  beqz      $v0, .L80240228
/* A3F960 80240220 00641023 */   subu     $v0, $v1, $a0
.L80240224:
/* A3F964 80240224 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80240228:
/* A3F968 80240228 8E02007C */  lw        $v0, 0x7c($s0)
/* A3F96C 8024022C 1440000E */  bnez      $v0, .L80240268
/* A3F970 80240230 00000000 */   nop      
/* A3F974 80240234 8E0300B4 */  lw        $v1, 0xb4($s0)
/* A3F978 80240238 8E020094 */  lw        $v0, 0x94($s0)
/* A3F97C 8024023C 00621821 */  addu      $v1, $v1, $v0
/* A3F980 80240240 04610004 */  bgez      $v1, .L80240254
/* A3F984 80240244 AE0300B4 */   sw       $v1, 0xb4($s0)
/* A3F988 80240248 3C020002 */  lui       $v0, 2
/* A3F98C 8024024C 08090099 */  j         .L80240264
/* A3F990 80240250 00621021 */   addu     $v0, $v1, $v0
.L80240254:
/* A3F994 80240254 3C040002 */  lui       $a0, 2
/* A3F998 80240258 0083102A */  slt       $v0, $a0, $v1
/* A3F99C 8024025C 10400002 */  beqz      $v0, .L80240268
/* A3F9A0 80240260 00641023 */   subu     $v0, $v1, $a0
.L80240264:
/* A3F9A4 80240264 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240268:
/* A3F9A8 80240268 8E040084 */  lw        $a0, 0x84($s0)
/* A3F9AC 8024026C 0C046F07 */  jal       set_main_pan_u
/* A3F9B0 80240270 8E0500A8 */   lw       $a1, 0xa8($s0)
/* A3F9B4 80240274 8E040084 */  lw        $a0, 0x84($s0)
/* A3F9B8 80240278 0C046F0D */  jal       set_main_pan_v
/* A3F9BC 8024027C 8E0500AC */   lw       $a1, 0xac($s0)
/* A3F9C0 80240280 8E040084 */  lw        $a0, 0x84($s0)
/* A3F9C4 80240284 0C046F13 */  jal       set_aux_pan_u
/* A3F9C8 80240288 8E0500B0 */   lw       $a1, 0xb0($s0)
/* A3F9CC 8024028C 8E040084 */  lw        $a0, 0x84($s0)
/* A3F9D0 80240290 0C046F19 */  jal       set_aux_pan_v
/* A3F9D4 80240294 8E0500B4 */   lw       $a1, 0xb4($s0)
/* A3F9D8 80240298 8E020070 */  lw        $v0, 0x70($s0)
/* A3F9DC 8024029C 8E030078 */  lw        $v1, 0x78($s0)
/* A3F9E0 802402A0 8E040098 */  lw        $a0, 0x98($s0)
/* A3F9E4 802402A4 24420001 */  addiu     $v0, $v0, 1
/* A3F9E8 802402A8 AE020070 */  sw        $v0, 0x70($s0)
/* A3F9EC 802402AC 8E020074 */  lw        $v0, 0x74($s0)
/* A3F9F0 802402B0 24630001 */  addiu     $v1, $v1, 1
/* A3F9F4 802402B4 AE030078 */  sw        $v1, 0x78($s0)
/* A3F9F8 802402B8 8E030070 */  lw        $v1, 0x70($s0)
/* A3F9FC 802402BC 24420001 */  addiu     $v0, $v0, 1
/* A3FA00 802402C0 AE020074 */  sw        $v0, 0x74($s0)
/* A3FA04 802402C4 8E02007C */  lw        $v0, 0x7c($s0)
/* A3FA08 802402C8 0064182A */  slt       $v1, $v1, $a0
/* A3FA0C 802402CC 24420001 */  addiu     $v0, $v0, 1
/* A3FA10 802402D0 14600002 */  bnez      $v1, .L802402DC
/* A3FA14 802402D4 AE02007C */   sw       $v0, 0x7c($s0)
/* A3FA18 802402D8 AE000070 */  sw        $zero, 0x70($s0)
.L802402DC:
/* A3FA1C 802402DC 8E020074 */  lw        $v0, 0x74($s0)
/* A3FA20 802402E0 8E03009C */  lw        $v1, 0x9c($s0)
/* A3FA24 802402E4 0043102A */  slt       $v0, $v0, $v1
/* A3FA28 802402E8 50400001 */  beql      $v0, $zero, .L802402F0
/* A3FA2C 802402EC AE000074 */   sw       $zero, 0x74($s0)
.L802402F0:
/* A3FA30 802402F0 8E020078 */  lw        $v0, 0x78($s0)
/* A3FA34 802402F4 8E0300A0 */  lw        $v1, 0xa0($s0)
/* A3FA38 802402F8 0043102A */  slt       $v0, $v0, $v1
/* A3FA3C 802402FC 50400001 */  beql      $v0, $zero, .L80240304
/* A3FA40 80240300 AE000078 */   sw       $zero, 0x78($s0)
.L80240304:
/* A3FA44 80240304 8E02007C */  lw        $v0, 0x7c($s0)
/* A3FA48 80240308 8E0300A4 */  lw        $v1, 0xa4($s0)
/* A3FA4C 8024030C 0043102A */  slt       $v0, $v0, $v1
/* A3FA50 80240310 50400001 */  beql      $v0, $zero, .L80240318
/* A3FA54 80240314 AE00007C */   sw       $zero, 0x7c($s0)
.L80240318:
/* A3FA58 80240318 8FBF0014 */  lw        $ra, 0x14($sp)
/* A3FA5C 8024031C 8FB00010 */  lw        $s0, 0x10($sp)
/* A3FA60 80240320 0000102D */  daddu     $v0, $zero, $zero
/* A3FA64 80240324 03E00008 */  jr        $ra
/* A3FA68 80240328 27BD0018 */   addiu    $sp, $sp, 0x18
