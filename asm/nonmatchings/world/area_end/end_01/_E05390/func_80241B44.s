.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241B44
/* E06EA4 80241B44 27BDFF80 */  addiu     $sp, $sp, -0x80
/* E06EA8 80241B48 AFB30064 */  sw        $s3, 0x64($sp)
/* E06EAC 80241B4C 0080982D */  daddu     $s3, $a0, $zero
/* E06EB0 80241B50 AFBE0078 */  sw        $fp, 0x78($sp)
/* E06EB4 80241B54 0000F02D */  daddu     $fp, $zero, $zero
/* E06EB8 80241B58 AFBF007C */  sw        $ra, 0x7c($sp)
/* E06EBC 80241B5C AFB70074 */  sw        $s7, 0x74($sp)
/* E06EC0 80241B60 AFB60070 */  sw        $s6, 0x70($sp)
/* E06EC4 80241B64 AFB5006C */  sw        $s5, 0x6c($sp)
/* E06EC8 80241B68 AFB40068 */  sw        $s4, 0x68($sp)
/* E06ECC 80241B6C AFB20060 */  sw        $s2, 0x60($sp)
/* E06ED0 80241B70 AFB1005C */  sw        $s1, 0x5c($sp)
/* E06ED4 80241B74 AFB00058 */  sw        $s0, 0x58($sp)
/* E06ED8 80241B78 96630070 */  lhu       $v1, 0x70($s3)
/* E06EDC 80241B7C 30620002 */  andi      $v0, $v1, 2
/* E06EE0 80241B80 10400005 */  beqz      $v0, .L80241B98
/* E06EE4 80241B84 27B00020 */   addiu    $s0, $sp, 0x20
/* E06EE8 80241B88 3062FFFD */  andi      $v0, $v1, 0xfffd
/* E06EEC 80241B8C A6620070 */  sh        $v0, 0x70($s3)
/* E06EF0 80241B90 AE600008 */  sw        $zero, 8($s3)
/* E06EF4 80241B94 AE60000C */  sw        $zero, 0xc($s3)
.L80241B98:
/* E06EF8 80241B98 27A50040 */  addiu     $a1, $sp, 0x40
/* E06EFC 80241B9C 27A60044 */  addiu     $a2, $sp, 0x44
/* E06F00 80241BA0 27A70048 */  addiu     $a3, $sp, 0x48
/* E06F04 80241BA4 0000882D */  daddu     $s1, $zero, $zero
/* E06F08 80241BA8 AFA00010 */  sw        $zero, 0x10($sp)
/* E06F0C 80241BAC AFA00014 */  sw        $zero, 0x14($sp)
/* E06F10 80241BB0 AFA00018 */  sw        $zero, 0x18($sp)
/* E06F14 80241BB4 AFA0001C */  sw        $zero, 0x1c($sp)
/* E06F18 80241BB8 8E640000 */  lw        $a0, ($s3)
/* E06F1C 80241BBC 0C0497DA */  jal       get_string_properties
/* E06F20 80241BC0 24170008 */   addiu    $s7, $zero, 8
/* E06F24 80241BC4 24020001 */  addiu     $v0, $zero, 1
/* E06F28 80241BC8 AFA00024 */  sw        $zero, 0x24($sp)
/* E06F2C 80241BCC AFA00028 */  sw        $zero, 0x28($sp)
/* E06F30 80241BD0 AFA20044 */  sw        $v0, 0x44($sp)
.L80241BD4:
/* E06F34 80241BD4 8E620000 */  lw        $v0, ($s3)
/* E06F38 80241BD8 00511821 */  addu      $v1, $v0, $s1
/* E06F3C 80241BDC 26310001 */  addiu     $s1, $s1, 1
/* E06F40 80241BE0 00511021 */  addu      $v0, $v0, $s1
/* E06F44 80241BE4 90740000 */  lbu       $s4, ($v1)
/* E06F48 80241BE8 90550000 */  lbu       $s5, ($v0)
/* E06F4C 80241BEC 2684FF10 */  addiu     $a0, $s4, -0xf0
/* E06F50 80241BF0 2C830010 */  sltiu     $v1, $a0, 0x10
/* E06F54 80241BF4 10600017 */  beqz      $v1, .L80241C54
/* E06F58 80241BF8 0000B02D */   daddu    $s6, $zero, $zero
/* E06F5C 80241BFC 00041080 */  sll       $v0, $a0, 2
/* E06F60 80241C00 3C098025 */  lui       $t1, 0x8025
/* E06F64 80241C04 252993A0 */  addiu     $t1, $t1, -0x6c60
/* E06F68 80241C08 00491021 */  addu      $v0, $v0, $t1
/* E06F6C 80241C0C 8C420000 */  lw        $v0, ($v0)
/* E06F70 80241C10 00400008 */  jr        $v0
/* E06F74 80241C14 00000000 */   nop      
/* E06F78 80241C18 2682FF0D */  addiu     $v0, $s4, -0xf3
/* E06F7C 80241C1C 08090747 */  j         .L80241D1C
/* E06F80 80241C20 AE020008 */   sw       $v0, 8($s0)
/* E06F84 80241C24 08090747 */  j         .L80241D1C
/* E06F88 80241C28 24160001 */   addiu    $s6, $zero, 1
/* E06F8C 80241C2C 8E630000 */  lw        $v1, ($s3)
/* E06F90 80241C30 00711021 */  addu      $v0, $v1, $s1
/* E06F94 80241C34 90420000 */  lbu       $v0, ($v0)
/* E06F98 80241C38 14400038 */  bnez      $v0, .L80241D1C
/* E06F9C 80241C3C 26310001 */   addiu    $s1, $s1, 1
/* E06FA0 80241C40 00711021 */  addu      $v0, $v1, $s1
/* E06FA4 80241C44 90420000 */  lbu       $v0, ($v0)
/* E06FA8 80241C48 26310001 */  addiu     $s1, $s1, 1
/* E06FAC 80241C4C 08090747 */  j         .L80241D1C
/* E06FB0 80241C50 AE020004 */   sw       $v0, 4($s0)
.L80241C54:
/* E06FB4 80241C54 24020001 */  addiu     $v0, $zero, 1
/* E06FB8 80241C58 329200FF */  andi      $s2, $s4, 0xff
/* E06FBC 80241C5C AFA00010 */  sw        $zero, 0x10($sp)
/* E06FC0 80241C60 AFA20014 */  sw        $v0, 0x14($sp)
/* E06FC4 80241C64 8E050004 */  lw        $a1, 4($s0)
/* E06FC8 80241C68 8E060008 */  lw        $a2, 8($s0)
/* E06FCC 80241C6C 3C073F80 */  lui       $a3, 0x3f80
/* E06FD0 80241C70 0C049721 */  jal       func_80125C84
/* E06FD4 80241C74 0240202D */   daddu    $a0, $s2, $zero
/* E06FD8 80241C78 8FA30044 */  lw        $v1, 0x44($sp)
/* E06FDC 80241C7C 8E040004 */  lw        $a0, 4($s0)
/* E06FE0 80241C80 2463FFFF */  addiu     $v1, $v1, -1
/* E06FE4 80241C84 00621821 */  addu      $v1, $v1, $v0
/* E06FE8 80241C88 2482FFFD */  addiu     $v0, $a0, -3
/* E06FEC 80241C8C 2C420002 */  sltiu     $v0, $v0, 2
/* E06FF0 80241C90 10400022 */  beqz      $v0, .L80241D1C
/* E06FF4 80241C94 AFA30044 */   sw       $v1, 0x44($sp)
/* E06FF8 80241C98 3C058024 */  lui       $a1, 0x8024
/* E06FFC 80241C9C 24A53178 */  addiu     $a1, $a1, 0x3178
/* E07000 80241CA0 24090004 */  addiu     $t1, $zero, 4
/* E07004 80241CA4 14890003 */  bne       $a0, $t1, .L80241CB4
/* E07008 80241CA8 00000000 */   nop      
/* E0700C 80241CAC 3C058024 */  lui       $a1, 0x8024
/* E07010 80241CB0 24A53110 */  addiu     $a1, $a1, 0x3110
.L80241CB4:
/* E07014 80241CB4 14890007 */  bne       $a0, $t1, .L80241CD4
/* E07018 80241CB8 0000302D */   daddu    $a2, $zero, $zero
/* E0701C 80241CBC 12570004 */  beq       $s2, $s7, .L80241CD0
/* E07020 80241CC0 24620001 */   addiu    $v0, $v1, 1
/* E07024 80241CC4 16B70004 */  bne       $s5, $s7, .L80241CD8
/* E07028 80241CC8 328800FF */   andi     $t0, $s4, 0xff
/* E0702C 80241CCC 24620001 */  addiu     $v0, $v1, 1
.L80241CD0:
/* E07030 80241CD0 AFA20044 */  sw        $v0, 0x44($sp)
.L80241CD4:
/* E07034 80241CD4 328800FF */  andi      $t0, $s4, 0xff
.L80241CD8:
/* E07038 80241CD8 32A7FFFF */  andi      $a3, $s5, 0xffff
/* E0703C 80241CDC 00061080 */  sll       $v0, $a2, 2
/* E07040 80241CE0 00452021 */  addu      $a0, $v0, $a1
.L80241CE4:
/* E07044 80241CE4 90820000 */  lbu       $v0, ($a0)
/* E07048 80241CE8 55020009 */  bnel      $t0, $v0, .L80241D10
/* E0704C 80241CEC 24840004 */   addiu    $a0, $a0, 4
/* E07050 80241CF0 90820001 */  lbu       $v0, 1($a0)
/* E07054 80241CF4 54E20006 */  bnel      $a3, $v0, .L80241D10
/* E07058 80241CF8 24840004 */   addiu    $a0, $a0, 4
/* E0705C 80241CFC 84830002 */  lh        $v1, 2($a0)
/* E07060 80241D00 8FA20044 */  lw        $v0, 0x44($sp)
/* E07064 80241D04 00431021 */  addu      $v0, $v0, $v1
/* E07068 80241D08 AFA20044 */  sw        $v0, 0x44($sp)
/* E0706C 80241D0C 24840004 */  addiu     $a0, $a0, 4
.L80241D10:
/* E07070 80241D10 84820002 */  lh        $v0, 2($a0)
/* E07074 80241D14 1440FFF3 */  bnez      $v0, .L80241CE4
/* E07078 80241D18 00000000 */   nop      
.L80241D1C:
/* E0707C 80241D1C 32C2FFFF */  andi      $v0, $s6, 0xffff
/* E07080 80241D20 1040FFAC */  beqz      $v0, .L80241BD4
/* E07084 80241D24 00000000 */   nop      
/* E07088 80241D28 96620070 */  lhu       $v0, 0x70($s3)
/* E0708C 80241D2C 8FA30044 */  lw        $v1, 0x44($sp)
/* E07090 80241D30 30420001 */  andi      $v0, $v0, 1
/* E07094 80241D34 10400015 */  beqz      $v0, .L80241D8C
/* E07098 80241D38 AE630014 */   sw       $v1, 0x14($s3)
/* E0709C 80241D3C 44831000 */  mtc1      $v1, $f2
/* E070A0 80241D40 00000000 */  nop       
/* E070A4 80241D44 468010A0 */  cvt.s.w   $f2, $f2
/* E070A8 80241D48 3C013FE0 */  lui       $at, 0x3fe0
/* E070AC 80241D4C 44810800 */  mtc1      $at, $f1
/* E070B0 80241D50 44800000 */  mtc1      $zero, $f0
/* E070B4 80241D54 460010A1 */  cvt.d.s   $f2, $f2
/* E070B8 80241D58 46201082 */  mul.d     $f2, $f2, $f0
/* E070BC 80241D5C 00000000 */  nop       
/* E070C0 80241D60 44800000 */  mtc1      $zero, $f0
/* E070C4 80241D64 44800800 */  mtc1      $zero, $f1
/* E070C8 80241D68 00000000 */  nop       
/* E070CC 80241D6C 46201080 */  add.d     $f2, $f2, $f0
/* E070D0 80241D70 C6600068 */  lwc1      $f0, 0x68($s3)
/* E070D4 80241D74 46800021 */  cvt.d.w   $f0, $f0
/* E070D8 80241D78 46220001 */  sub.d     $f0, $f0, $f2
/* E070DC 80241D7C 4620010D */  trunc.w.d $f4, $f0
/* E070E0 80241D80 44152000 */  mfc1      $s5, $f4
/* E070E4 80241D84 08090765 */  j         .L80241D94
/* E070E8 80241D88 0000B82D */   daddu    $s7, $zero, $zero
.L80241D8C:
/* E070EC 80241D8C 8E750068 */  lw        $s5, 0x68($s3)
/* E070F0 80241D90 0000B82D */  daddu     $s7, $zero, $zero
.L80241D94:
/* E070F4 80241D94 AE000004 */  sw        $zero, 4($s0)
/* E070F8 80241D98 AE000008 */  sw        $zero, 8($s0)
/* E070FC 80241D9C 8E620010 */  lw        $v0, 0x10($s3)
/* E07100 80241DA0 02E0882D */  daddu     $s1, $s7, $zero
/* E07104 80241DA4 AE02000C */  sw        $v0, 0xc($s0)
.L80241DA8:
/* E07108 80241DA8 8E620000 */  lw        $v0, ($s3)
/* E0710C 80241DAC A7A00050 */  sh        $zero, 0x50($sp)
/* E07110 80241DB0 00511821 */  addu      $v1, $v0, $s1
/* E07114 80241DB4 26310001 */  addiu     $s1, $s1, 1
/* E07118 80241DB8 00511021 */  addu      $v0, $v0, $s1
/* E0711C 80241DBC 90740000 */  lbu       $s4, ($v1)
/* E07120 80241DC0 90560000 */  lbu       $s6, ($v0)
/* E07124 80241DC4 2684FF10 */  addiu     $a0, $s4, -0xf0
/* E07128 80241DC8 2C830010 */  sltiu     $v1, $a0, 0x10
/* E0712C 80241DCC 10600016 */  beqz      $v1, .L80241E28
/* E07130 80241DD0 00041080 */   sll      $v0, $a0, 2
/* E07134 80241DD4 3C018025 */  lui       $at, 0x8025
/* E07138 80241DD8 00220821 */  addu      $at, $at, $v0
/* E0713C 80241DDC 8C2293E0 */  lw        $v0, -0x6c20($at)
/* E07140 80241DE0 00400008 */  jr        $v0
/* E07144 80241DE4 00000000 */   nop      
/* E07148 80241DE8 2682FF0D */  addiu     $v0, $s4, -0xf3
/* E0714C 80241DEC 0809083F */  j         .L802420FC
/* E07150 80241DF0 AE020008 */   sw       $v0, 8($s0)
/* E07154 80241DF4 24090001 */  addiu     $t1, $zero, 1
/* E07158 80241DF8 0809083F */  j         .L802420FC
/* E0715C 80241DFC A7A90050 */   sh       $t1, 0x50($sp)
/* E07160 80241E00 8E630000 */  lw        $v1, ($s3)
/* E07164 80241E04 00711021 */  addu      $v0, $v1, $s1
/* E07168 80241E08 90420000 */  lbu       $v0, ($v0)
/* E0716C 80241E0C 144000BB */  bnez      $v0, .L802420FC
/* E07170 80241E10 26310001 */   addiu    $s1, $s1, 1
/* E07174 80241E14 00711021 */  addu      $v0, $v1, $s1
/* E07178 80241E18 90420000 */  lbu       $v0, ($v0)
/* E0717C 80241E1C 26310001 */  addiu     $s1, $s1, 1
/* E07180 80241E20 0809083F */  j         .L802420FC
/* E07184 80241E24 AE020004 */   sw       $v0, 4($s0)
.L80241E28:
/* E07188 80241E28 328300FF */  andi      $v1, $s4, 0xff
/* E0718C 80241E2C 2C6200F0 */  sltiu     $v0, $v1, 0xf0
/* E07190 80241E30 10400083 */  beqz      $v0, .L80242040
/* E07194 80241E34 24090001 */   addiu    $t1, $zero, 1
/* E07198 80241E38 AE030000 */  sw        $v1, ($s0)
/* E0719C 80241E3C AE150010 */  sw        $s5, 0x10($s0)
/* E071A0 80241E40 8E62006C */  lw        $v0, 0x6c($s3)
/* E071A4 80241E44 AE020014 */  sw        $v0, 0x14($s0)
/* E071A8 80241E48 8E63000C */  lw        $v1, 0xc($s3)
/* E071AC 80241E4C 1069003F */  beq       $v1, $t1, .L80241F4C
/* E071B0 80241E50 28620002 */   slti     $v0, $v1, 2
/* E071B4 80241E54 50400005 */  beql      $v0, $zero, .L80241E6C
/* E071B8 80241E58 24090002 */   addiu    $t1, $zero, 2
/* E071BC 80241E5C 10600007 */  beqz      $v1, .L80241E7C
/* E071C0 80241E60 00000000 */   nop      
/* E071C4 80241E64 08090811 */  j         .L80242044
/* E071C8 80241E68 26F70001 */   addiu    $s7, $s7, 1
.L80241E6C:
/* E071CC 80241E6C 10690043 */  beq       $v1, $t1, .L80241F7C
/* E071D0 80241E70 00000000 */   nop      
/* E071D4 80241E74 08090810 */  j         .L80242040
/* E071D8 80241E78 26F70001 */   addiu    $s7, $s7, 1
.L80241E7C:
/* E071DC 80241E7C 8E620020 */  lw        $v0, 0x20($s3)
/* E071E0 80241E80 00570018 */  mult      $v0, $s7
/* E071E4 80241E84 8E620008 */  lw        $v0, 8($s3)
/* E071E8 80241E88 00004812 */  mflo      $t1
/* E071EC 80241E8C 00491023 */  subu      $v0, $v0, $t1
/* E071F0 80241E90 0440006A */  bltz      $v0, .L8024203C
/* E071F4 80241E94 AE020018 */   sw       $v0, 0x18($s0)
/* E071F8 80241E98 8E63001C */  lw        $v1, 0x1c($s3)
/* E071FC 80241E9C 0062102A */  slt       $v0, $v1, $v0
/* E07200 80241EA0 54400001 */  bnel      $v0, $zero, .L80241EA8
/* E07204 80241EA4 AE030018 */   sw       $v1, 0x18($s0)
.L80241EA8:
/* E07208 80241EA8 240900FD */  addiu     $t1, $zero, 0xfd
/* E0720C 80241EAC 16C90005 */  bne       $s6, $t1, .L80241EC4
/* E07210 80241EB0 00000000 */   nop      
/* E07214 80241EB4 8E030018 */  lw        $v1, 0x18($s0)
/* E07218 80241EB8 8E62001C */  lw        $v0, 0x1c($s3)
/* E0721C 80241EBC 50620001 */  beql      $v1, $v0, .L80241EC4
/* E07220 80241EC0 241E0001 */   addiu    $fp, $zero, 1
.L80241EC4:
/* E07224 80241EC4 8E630018 */  lw        $v1, 0x18($s3)
/* E07228 80241EC8 2C620006 */  sltiu     $v0, $v1, 6
/* E0722C 80241ECC 1040005B */  beqz      $v0, .L8024203C
/* E07230 80241ED0 00031080 */   sll      $v0, $v1, 2
/* E07234 80241ED4 3C018025 */  lui       $at, 0x8025
/* E07238 80241ED8 00220821 */  addu      $at, $at, $v0
/* E0723C 80241EDC 8C229420 */  lw        $v0, -0x6be0($at)
/* E07240 80241EE0 00400008 */  jr        $v0
/* E07244 80241EE4 00000000 */   nop      
/* E07248 80241EE8 0260202D */  daddu     $a0, $s3, $zero
/* E0724C 80241EEC 0C0900A0 */  jal       func_80240280
/* E07250 80241EF0 0200282D */   daddu    $a1, $s0, $zero
/* E07254 80241EF4 08090810 */  j         .L80242040
/* E07258 80241EF8 26F70001 */   addiu    $s7, $s7, 1
/* E0725C 80241EFC 0260202D */  daddu     $a0, $s3, $zero
/* E07260 80241F00 0C090154 */  jal       func_80240550
/* E07264 80241F04 0200282D */   daddu    $a1, $s0, $zero
/* E07268 80241F08 08090810 */  j         .L80242040
/* E0726C 80241F0C 26F70001 */   addiu    $s7, $s7, 1
/* E07270 80241F10 0260202D */  daddu     $a0, $s3, $zero
/* E07274 80241F14 0C09020B */  jal       func_8024082C
/* E07278 80241F18 0200282D */   daddu    $a1, $s0, $zero
/* E0727C 80241F1C 08090810 */  j         .L80242040
/* E07280 80241F20 26F70001 */   addiu    $s7, $s7, 1
/* E07284 80241F24 0260202D */  daddu     $a0, $s3, $zero
/* E07288 80241F28 0C0902BE */  jal       func_80240AF8
/* E0728C 80241F2C 0200282D */   daddu    $a1, $s0, $zero
/* E07290 80241F30 08090810 */  j         .L80242040
/* E07294 80241F34 26F70001 */   addiu    $s7, $s7, 1
/* E07298 80241F38 0260202D */  daddu     $a0, $s3, $zero
/* E0729C 80241F3C 0C0903B0 */  jal       func_80240EC0
/* E072A0 80241F40 0200282D */   daddu    $a1, $s0, $zero
/* E072A4 80241F44 08090810 */  j         .L80242040
/* E072A8 80241F48 26F70001 */   addiu    $s7, $s7, 1
.L80241F4C:
/* E072AC 80241F4C 240900FD */  addiu     $t1, $zero, 0xfd
/* E072B0 80241F50 16C90006 */  bne       $s6, $t1, .L80241F6C
/* E072B4 80241F54 0260202D */   daddu    $a0, $s3, $zero
/* E072B8 80241F58 8E630008 */  lw        $v1, 8($s3)
/* E072BC 80241F5C 8E620038 */  lw        $v0, 0x38($s3)
/* E072C0 80241F60 50620002 */  beql      $v1, $v0, .L80241F6C
/* E072C4 80241F64 241E0001 */   addiu    $fp, $zero, 1
/* E072C8 80241F68 0260202D */  daddu     $a0, $s3, $zero
.L80241F6C:
/* E072CC 80241F6C 0C090477 */  jal       func_802411DC
/* E072D0 80241F70 0200282D */   daddu    $a1, $s0, $zero
/* E072D4 80241F74 08090810 */  j         .L80242040
/* E072D8 80241F78 26F70001 */   addiu    $s7, $s7, 1
.L80241F7C:
/* E072DC 80241F7C 8E620054 */  lw        $v0, 0x54($s3)
/* E072E0 80241F80 00570018 */  mult      $v0, $s7
/* E072E4 80241F84 8E620008 */  lw        $v0, 8($s3)
/* E072E8 80241F88 00004812 */  mflo      $t1
/* E072EC 80241F8C 00491023 */  subu      $v0, $v0, $t1
/* E072F0 80241F90 04410002 */  bgez      $v0, .L80241F9C
/* E072F4 80241F94 AE020018 */   sw       $v0, 0x18($s0)
/* E072F8 80241F98 AE000018 */  sw        $zero, 0x18($s0)
.L80241F9C:
/* E072FC 80241F9C 8E020018 */  lw        $v0, 0x18($s0)
/* E07300 80241FA0 8E630050 */  lw        $v1, 0x50($s3)
/* E07304 80241FA4 0062102A */  slt       $v0, $v1, $v0
/* E07308 80241FA8 54400001 */  bnel      $v0, $zero, .L80241FB0
/* E0730C 80241FAC AE030018 */   sw       $v1, 0x18($s0)
.L80241FB0:
/* E07310 80241FB0 240900FD */  addiu     $t1, $zero, 0xfd
/* E07314 80241FB4 16C90005 */  bne       $s6, $t1, .L80241FCC
/* E07318 80241FB8 00000000 */   nop      
/* E0731C 80241FBC 8E030018 */  lw        $v1, 0x18($s0)
/* E07320 80241FC0 8E620050 */  lw        $v0, 0x50($s3)
/* E07324 80241FC4 50620001 */  beql      $v1, $v0, .L80241FCC
/* E07328 80241FC8 241E0001 */   addiu    $fp, $zero, 1
.L80241FCC:
/* E0732C 80241FCC 8E63004C */  lw        $v1, 0x4c($s3)
/* E07330 80241FD0 24090001 */  addiu     $t1, $zero, 1
/* E07334 80241FD4 1069000D */  beq       $v1, $t1, .L8024200C
/* E07338 80241FD8 28620002 */   slti     $v0, $v1, 2
/* E0733C 80241FDC 50400005 */  beql      $v0, $zero, .L80241FF4
/* E07340 80241FE0 24090002 */   addiu    $t1, $zero, 2
/* E07344 80241FE4 10600013 */  beqz      $v1, .L80242034
/* E07348 80241FE8 0260202D */   daddu    $a0, $s3, $zero
/* E0734C 80241FEC 08090811 */  j         .L80242044
/* E07350 80241FF0 26F70001 */   addiu    $s7, $s7, 1
.L80241FF4:
/* E07354 80241FF4 1069000A */  beq       $v1, $t1, .L80242020
/* E07358 80241FF8 24020003 */   addiu    $v0, $zero, 3
/* E0735C 80241FFC 1062000D */  beq       $v1, $v0, .L80242034
/* E07360 80242000 0260202D */   daddu    $a0, $s3, $zero
/* E07364 80242004 08090810 */  j         .L80242040
/* E07368 80242008 26F70001 */   addiu    $s7, $s7, 1
.L8024200C:
/* E0736C 8024200C 0260202D */  daddu     $a0, $s3, $zero
/* E07370 80242010 0C090537 */  jal       func_802414DC
/* E07374 80242014 0200282D */   daddu    $a1, $s0, $zero
/* E07378 80242018 08090810 */  j         .L80242040
/* E0737C 8024201C 26F70001 */   addiu    $s7, $s7, 1
.L80242020:
/* E07380 80242020 0260202D */  daddu     $a0, $s3, $zero
/* E07384 80242024 0C0905DE */  jal       func_80241778
/* E07388 80242028 0200282D */   daddu    $a1, $s0, $zero
/* E0738C 8024202C 08090810 */  j         .L80242040
/* E07390 80242030 26F70001 */   addiu    $s7, $s7, 1
.L80242034:
/* E07394 80242034 0C090682 */  jal       func_80241A08
/* E07398 80242038 0200282D */   daddu    $a1, $s0, $zero
.L8024203C:
/* E0739C 8024203C 26F70001 */  addiu     $s7, $s7, 1
.L80242040:
/* E073A0 80242040 24090001 */  addiu     $t1, $zero, 1
.L80242044:
/* E073A4 80242044 329200FF */  andi      $s2, $s4, 0xff
/* E073A8 80242048 AFA00010 */  sw        $zero, 0x10($sp)
/* E073AC 8024204C AFA90014 */  sw        $t1, 0x14($sp)
/* E073B0 80242050 8E050004 */  lw        $a1, 4($s0)
/* E073B4 80242054 8E060008 */  lw        $a2, 8($s0)
/* E073B8 80242058 3C073F80 */  lui       $a3, 0x3f80
/* E073BC 8024205C 0C049721 */  jal       func_80125C84
/* E073C0 80242060 0240202D */   daddu    $a0, $s2, $zero
/* E073C4 80242064 26A3FFFF */  addiu     $v1, $s5, -1
/* E073C8 80242068 8E040004 */  lw        $a0, 4($s0)
/* E073CC 8024206C 0062A821 */  addu      $s5, $v1, $v0
/* E073D0 80242070 2482FFFD */  addiu     $v0, $a0, -3
/* E073D4 80242074 2C420002 */  sltiu     $v0, $v0, 2
/* E073D8 80242078 10400020 */  beqz      $v0, .L802420FC
/* E073DC 8024207C 00000000 */   nop      
/* E073E0 80242080 3C058024 */  lui       $a1, 0x8024
/* E073E4 80242084 24A53178 */  addiu     $a1, $a1, 0x3178
/* E073E8 80242088 24090004 */  addiu     $t1, $zero, 4
/* E073EC 8024208C 14890003 */  bne       $a0, $t1, .L8024209C
/* E073F0 80242090 00000000 */   nop      
/* E073F4 80242094 3C058024 */  lui       $a1, 0x8024
/* E073F8 80242098 24A53110 */  addiu     $a1, $a1, 0x3110
.L8024209C:
/* E073FC 8024209C 14890007 */  bne       $a0, $t1, .L802420BC
/* E07400 802420A0 0000302D */   daddu    $a2, $zero, $zero
/* E07404 802420A4 24020008 */  addiu     $v0, $zero, 8
/* E07408 802420A8 52420004 */  beql      $s2, $v0, .L802420BC
/* E0740C 802420AC 26B50001 */   addiu    $s5, $s5, 1
/* E07410 802420B0 16C20003 */  bne       $s6, $v0, .L802420C0
/* E07414 802420B4 328300FF */   andi     $v1, $s4, 0xff
/* E07418 802420B8 26B50001 */  addiu     $s5, $s5, 1
.L802420BC:
/* E0741C 802420BC 328300FF */  andi      $v1, $s4, 0xff
.L802420C0:
/* E07420 802420C0 32C7FFFF */  andi      $a3, $s6, 0xffff
/* E07424 802420C4 00061080 */  sll       $v0, $a2, 2
/* E07428 802420C8 00452021 */  addu      $a0, $v0, $a1
.L802420CC:
/* E0742C 802420CC 90820000 */  lbu       $v0, ($a0)
/* E07430 802420D0 54620007 */  bnel      $v1, $v0, .L802420F0
/* E07434 802420D4 24840004 */   addiu    $a0, $a0, 4
/* E07438 802420D8 90820001 */  lbu       $v0, 1($a0)
/* E0743C 802420DC 54E20004 */  bnel      $a3, $v0, .L802420F0
/* E07440 802420E0 24840004 */   addiu    $a0, $a0, 4
/* E07444 802420E4 84820002 */  lh        $v0, 2($a0)
/* E07448 802420E8 02A2A821 */  addu      $s5, $s5, $v0
/* E0744C 802420EC 24840004 */  addiu     $a0, $a0, 4
.L802420F0:
/* E07450 802420F0 84820002 */  lh        $v0, 2($a0)
/* E07454 802420F4 1440FFF5 */  bnez      $v0, .L802420CC
/* E07458 802420F8 00000000 */   nop      
.L802420FC:
/* E0745C 802420FC 97A20050 */  lhu       $v0, 0x50($sp)
/* E07460 80242100 1040FF29 */  beqz      $v0, .L80241DA8
/* E07464 80242104 00000000 */   nop      
/* E07468 80242108 8E62000C */  lw        $v0, 0xc($s3)
/* E0746C 8024210C 14400015 */  bnez      $v0, .L80242164
/* E07470 80242110 00000000 */   nop      
/* E07474 80242114 13C00013 */  beqz      $fp, .L80242164
/* E07478 80242118 0000282D */   daddu    $a1, $zero, $zero
/* E0747C 8024211C 00A0302D */  daddu     $a2, $a1, $zero
/* E07480 80242120 AFA0004C */  sw        $zero, 0x4c($sp)
/* E07484 80242124 AFA00010 */  sw        $zero, 0x10($sp)
/* E07488 80242128 AFA00014 */  sw        $zero, 0x14($sp)
/* E0748C 8024212C AFA00018 */  sw        $zero, 0x18($sp)
/* E07490 80242130 AFA0001C */  sw        $zero, 0x1c($sp)
/* E07494 80242134 8E640000 */  lw        $a0, ($s3)
/* E07498 80242138 0C0497DA */  jal       get_string_properties
/* E0749C 8024213C 27A7004C */   addiu    $a3, $sp, 0x4c
/* E074A0 80242140 8E64000C */  lw        $a0, 0xc($s3)
/* E074A4 80242144 8E630038 */  lw        $v1, 0x38($s3)
/* E074A8 80242148 AE600008 */  sw        $zero, 8($s3)
/* E074AC 8024214C 24820001 */  addiu     $v0, $a0, 1
/* E074B0 80242150 1C600016 */  bgtz      $v1, .L802421AC
/* E074B4 80242154 AE62000C */   sw       $v0, 0xc($s3)
/* E074B8 80242158 24820002 */  addiu     $v0, $a0, 2
/* E074BC 8024215C 0809086B */  j         .L802421AC
/* E074C0 80242160 AE62000C */   sw       $v0, 0xc($s3)
.L80242164:
/* E074C4 80242164 8E63000C */  lw        $v1, 0xc($s3)
/* E074C8 80242168 24020001 */  addiu     $v0, $zero, 1
/* E074CC 8024216C 14620008 */  bne       $v1, $v0, .L80242190
/* E074D0 80242170 24020002 */   addiu    $v0, $zero, 2
/* E074D4 80242174 13C00005 */  beqz      $fp, .L8024218C
/* E074D8 80242178 0060102D */   daddu    $v0, $v1, $zero
/* E074DC 8024217C 24420001 */  addiu     $v0, $v0, 1
/* E074E0 80242180 AE600008 */  sw        $zero, 8($s3)
/* E074E4 80242184 0809086B */  j         .L802421AC
/* E074E8 80242188 AE62000C */   sw       $v0, 0xc($s3)
.L8024218C:
/* E074EC 8024218C 24020002 */  addiu     $v0, $zero, 2
.L80242190:
/* E074F0 80242190 14620006 */  bne       $v1, $v0, .L802421AC
/* E074F4 80242194 00000000 */   nop      
/* E074F8 80242198 13C00004 */  beqz      $fp, .L802421AC
/* E074FC 8024219C 00000000 */   nop      
/* E07500 802421A0 96620070 */  lhu       $v0, 0x70($s3)
/* E07504 802421A4 3042FFFE */  andi      $v0, $v0, 0xfffe
/* E07508 802421A8 A6620070 */  sh        $v0, 0x70($s3)
.L802421AC:
/* E0750C 802421AC 8E620008 */  lw        $v0, 8($s3)
/* E07510 802421B0 24420001 */  addiu     $v0, $v0, 1
/* E07514 802421B4 AE620008 */  sw        $v0, 8($s3)
/* E07518 802421B8 8FBF007C */  lw        $ra, 0x7c($sp)
/* E0751C 802421BC 8FBE0078 */  lw        $fp, 0x78($sp)
/* E07520 802421C0 8FB70074 */  lw        $s7, 0x74($sp)
/* E07524 802421C4 8FB60070 */  lw        $s6, 0x70($sp)
/* E07528 802421C8 8FB5006C */  lw        $s5, 0x6c($sp)
/* E0752C 802421CC 8FB40068 */  lw        $s4, 0x68($sp)
/* E07530 802421D0 8FB30064 */  lw        $s3, 0x64($sp)
/* E07534 802421D4 8FB20060 */  lw        $s2, 0x60($sp)
/* E07538 802421D8 8FB1005C */  lw        $s1, 0x5c($sp)
/* E0753C 802421DC 8FB00058 */  lw        $s0, 0x58($sp)
/* E07540 802421E0 03E00008 */  jr        $ra
/* E07544 802421E4 27BD0080 */   addiu    $sp, $sp, 0x80
