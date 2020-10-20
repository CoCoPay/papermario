.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241AE0_DCE7B0
/* DCE7B0 80241AE0 27BDFF98 */  addiu     $sp, $sp, -0x68
/* DCE7B4 80241AE4 AFB40058 */  sw        $s4, 0x58($sp)
/* DCE7B8 80241AE8 0080A02D */  daddu     $s4, $a0, $zero
/* DCE7BC 80241AEC AFBF0060 */  sw        $ra, 0x60($sp)
/* DCE7C0 80241AF0 AFB5005C */  sw        $s5, 0x5c($sp)
/* DCE7C4 80241AF4 AFB30054 */  sw        $s3, 0x54($sp)
/* DCE7C8 80241AF8 AFB20050 */  sw        $s2, 0x50($sp)
/* DCE7CC 80241AFC AFB1004C */  sw        $s1, 0x4c($sp)
/* DCE7D0 80241B00 AFB00048 */  sw        $s0, 0x48($sp)
/* DCE7D4 80241B04 8E910148 */  lw        $s1, 0x148($s4)
/* DCE7D8 80241B08 86240008 */  lh        $a0, 8($s1)
/* DCE7DC 80241B0C 0C00EABB */  jal       get_npc_unsafe
/* DCE7E0 80241B10 00A0802D */   daddu    $s0, $a1, $zero
/* DCE7E4 80241B14 8E83000C */  lw        $v1, 0xc($s4)
/* DCE7E8 80241B18 0280202D */  daddu     $a0, $s4, $zero
/* DCE7EC 80241B1C 8C650000 */  lw        $a1, ($v1)
/* DCE7F0 80241B20 0C0B1EAF */  jal       get_variable
/* DCE7F4 80241B24 0040902D */   daddu    $s2, $v0, $zero
/* DCE7F8 80241B28 AFA00018 */  sw        $zero, 0x18($sp)
/* DCE7FC 80241B2C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCE800 80241B30 8C630094 */  lw        $v1, 0x94($v1)
/* DCE804 80241B34 AFA3001C */  sw        $v1, 0x1c($sp)
/* DCE808 80241B38 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCE80C 80241B3C 8C630080 */  lw        $v1, 0x80($v1)
/* DCE810 80241B40 AFA30020 */  sw        $v1, 0x20($sp)
/* DCE814 80241B44 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCE818 80241B48 8C630088 */  lw        $v1, 0x88($v1)
/* DCE81C 80241B4C AFA30024 */  sw        $v1, 0x24($sp)
/* DCE820 80241B50 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCE824 80241B54 8C63008C */  lw        $v1, 0x8c($v1)
/* DCE828 80241B58 27B50018 */  addiu     $s5, $sp, 0x18
/* DCE82C 80241B5C AFA30028 */  sw        $v1, 0x28($sp)
/* DCE830 80241B60 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DCE834 80241B64 3C014282 */  lui       $at, 0x4282
/* DCE838 80241B68 44810000 */  mtc1      $at, $f0
/* DCE83C 80241B6C 8C630090 */  lw        $v1, 0x90($v1)
/* DCE840 80241B70 0040982D */  daddu     $s3, $v0, $zero
/* DCE844 80241B74 E7A00030 */  swc1      $f0, 0x30($sp)
/* DCE848 80241B78 A7A00034 */  sh        $zero, 0x34($sp)
/* DCE84C 80241B7C 16000005 */  bnez      $s0, .L80241B94
/* DCE850 80241B80 AFA3002C */   sw       $v1, 0x2c($sp)
/* DCE854 80241B84 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DCE858 80241B88 30420004 */  andi      $v0, $v0, 4
/* DCE85C 80241B8C 10400044 */  beqz      $v0, .L80241CA0
/* DCE860 80241B90 00000000 */   nop      
.L80241B94:
/* DCE864 80241B94 2404F7FF */  addiu     $a0, $zero, -0x801
/* DCE868 80241B98 AE800070 */  sw        $zero, 0x70($s4)
/* DCE86C 80241B9C A640008E */  sh        $zero, 0x8e($s2)
/* DCE870 80241BA0 8E2200CC */  lw        $v0, 0xcc($s1)
/* DCE874 80241BA4 8E430000 */  lw        $v1, ($s2)
/* DCE878 80241BA8 8C420000 */  lw        $v0, ($v0)
/* DCE87C 80241BAC 00641824 */  and       $v1, $v1, $a0
/* DCE880 80241BB0 AE430000 */  sw        $v1, ($s2)
/* DCE884 80241BB4 AE420028 */  sw        $v0, 0x28($s2)
/* DCE888 80241BB8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* DCE88C 80241BBC 8C420098 */  lw        $v0, 0x98($v0)
/* DCE890 80241BC0 54400005 */  bnel      $v0, $zero, .L80241BD8
/* DCE894 80241BC4 2402FDFF */   addiu    $v0, $zero, -0x201
/* DCE898 80241BC8 34620200 */  ori       $v0, $v1, 0x200
/* DCE89C 80241BCC 2403FFF7 */  addiu     $v1, $zero, -9
/* DCE8A0 80241BD0 080906F8 */  j         .L80241BE0
/* DCE8A4 80241BD4 00431024 */   and      $v0, $v0, $v1
.L80241BD8:
/* DCE8A8 80241BD8 00621024 */  and       $v0, $v1, $v0
/* DCE8AC 80241BDC 34420008 */  ori       $v0, $v0, 8
.L80241BE0:
/* DCE8B0 80241BE0 AE420000 */  sw        $v0, ($s2)
/* DCE8B4 80241BE4 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DCE8B8 80241BE8 30420004 */  andi      $v0, $v0, 4
/* DCE8BC 80241BEC 10400008 */  beqz      $v0, .L80241C10
/* DCE8C0 80241BF0 24020063 */   addiu    $v0, $zero, 0x63
/* DCE8C4 80241BF4 AE820070 */  sw        $v0, 0x70($s4)
/* DCE8C8 80241BF8 AE800074 */  sw        $zero, 0x74($s4)
/* DCE8CC 80241BFC 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DCE8D0 80241C00 2403FFFB */  addiu     $v1, $zero, -5
/* DCE8D4 80241C04 00431024 */  and       $v0, $v0, $v1
/* DCE8D8 80241C08 0809070F */  j         .L80241C3C
/* DCE8DC 80241C0C AE2200B0 */   sw       $v0, 0xb0($s1)
.L80241C10:
/* DCE8E0 80241C10 8E220000 */  lw        $v0, ($s1)
/* DCE8E4 80241C14 3C034000 */  lui       $v1, 0x4000
/* DCE8E8 80241C18 00431024 */  and       $v0, $v0, $v1
/* DCE8EC 80241C1C 10400007 */  beqz      $v0, .L80241C3C
/* DCE8F0 80241C20 3C03BFFF */   lui      $v1, 0xbfff
/* DCE8F4 80241C24 2402000C */  addiu     $v0, $zero, 0xc
/* DCE8F8 80241C28 AE820070 */  sw        $v0, 0x70($s4)
/* DCE8FC 80241C2C 8E220000 */  lw        $v0, ($s1)
/* DCE900 80241C30 3463FFFF */  ori       $v1, $v1, 0xffff
/* DCE904 80241C34 00431024 */  and       $v0, $v0, $v1
/* DCE908 80241C38 AE220000 */  sw        $v0, ($s1)
.L80241C3C:
/* DCE90C 80241C3C 27A50038 */  addiu     $a1, $sp, 0x38
/* DCE910 80241C40 27A6003C */  addiu     $a2, $sp, 0x3c
/* DCE914 80241C44 C6400038 */  lwc1      $f0, 0x38($s2)
/* DCE918 80241C48 864200A8 */  lh        $v0, 0xa8($s2)
/* DCE91C 80241C4C 3C0142C8 */  lui       $at, 0x42c8
/* DCE920 80241C50 44812000 */  mtc1      $at, $f4
/* DCE924 80241C54 44823000 */  mtc1      $v0, $f6
/* DCE928 80241C58 00000000 */  nop       
/* DCE92C 80241C5C 468031A0 */  cvt.s.w   $f6, $f6
/* DCE930 80241C60 27A20044 */  addiu     $v0, $sp, 0x44
/* DCE934 80241C64 E7A00038 */  swc1      $f0, 0x38($sp)
/* DCE938 80241C68 C640003C */  lwc1      $f0, 0x3c($s2)
/* DCE93C 80241C6C C6420040 */  lwc1      $f2, 0x40($s2)
/* DCE940 80241C70 46060000 */  add.s     $f0, $f0, $f6
/* DCE944 80241C74 E7A40044 */  swc1      $f4, 0x44($sp)
/* DCE948 80241C78 E7A20040 */  swc1      $f2, 0x40($sp)
/* DCE94C 80241C7C E7A0003C */  swc1      $f0, 0x3c($sp)
/* DCE950 80241C80 AFA20010 */  sw        $v0, 0x10($sp)
/* DCE954 80241C84 8E440080 */  lw        $a0, 0x80($s2)
/* DCE958 80241C88 0C0372DF */  jal       func_800DCB7C
/* DCE95C 80241C8C 27A70040 */   addiu    $a3, $sp, 0x40
/* DCE960 80241C90 10400003 */  beqz      $v0, .L80241CA0
/* DCE964 80241C94 00000000 */   nop      
/* DCE968 80241C98 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* DCE96C 80241C9C E640003C */  swc1      $f0, 0x3c($s2)
.L80241CA0:
/* DCE970 80241CA0 8E830070 */  lw        $v1, 0x70($s4)
/* DCE974 80241CA4 2C620064 */  sltiu     $v0, $v1, 0x64
/* DCE978 80241CA8 10400042 */  beqz      $v0, .L80241DB4
/* DCE97C 80241CAC 00031080 */   sll      $v0, $v1, 2
/* DCE980 80241CB0 3C018025 */  lui       $at, 0x8025
/* DCE984 80241CB4 00220821 */  addu      $at, $at, $v0
/* DCE988 80241CB8 8C22A7E0 */  lw        $v0, -0x5820($at)
/* DCE98C 80241CBC 00400008 */  jr        $v0
/* DCE990 80241CC0 00000000 */   nop      
/* DCE994 80241CC4 0280202D */  daddu     $a0, $s4, $zero
/* DCE998 80241CC8 0260282D */  daddu     $a1, $s3, $zero
/* DCE99C 80241CCC 0C0903D3 */  jal       func_80240F4C
/* DCE9A0 80241CD0 02A0302D */   daddu    $a2, $s5, $zero
/* DCE9A4 80241CD4 0280202D */  daddu     $a0, $s4, $zero
/* DCE9A8 80241CD8 0260282D */  daddu     $a1, $s3, $zero
/* DCE9AC 80241CDC 0C090429 */  jal       func_802410A4
/* DCE9B0 80241CE0 02A0302D */   daddu    $a2, $s5, $zero
/* DCE9B4 80241CE4 0809076D */  j         .L80241DB4
/* DCE9B8 80241CE8 00000000 */   nop      
/* DCE9BC 80241CEC 0280202D */  daddu     $a0, $s4, $zero
/* DCE9C0 80241CF0 0260282D */  daddu     $a1, $s3, $zero
/* DCE9C4 80241CF4 0C0904D3 */  jal       func_8024134C
/* DCE9C8 80241CF8 02A0302D */   daddu    $a2, $s5, $zero
/* DCE9CC 80241CFC 0280202D */  daddu     $a0, $s4, $zero
/* DCE9D0 80241D00 0260282D */  daddu     $a1, $s3, $zero
/* DCE9D4 80241D04 0C090503 */  jal       func_8024140C
/* DCE9D8 80241D08 02A0302D */   daddu    $a2, $s5, $zero
/* DCE9DC 80241D0C 0809076D */  j         .L80241DB4
/* DCE9E0 80241D10 00000000 */   nop      
/* DCE9E4 80241D14 0280202D */  daddu     $a0, $s4, $zero
/* DCE9E8 80241D18 0260282D */  daddu     $a1, $s3, $zero
/* DCE9EC 80241D1C 0C090572 */  jal       func_802415C8
/* DCE9F0 80241D20 02A0302D */   daddu    $a2, $s5, $zero
/* DCE9F4 80241D24 0809076D */  j         .L80241DB4
/* DCE9F8 80241D28 00000000 */   nop      
/* DCE9FC 80241D2C 0280202D */  daddu     $a0, $s4, $zero
/* DCEA00 80241D30 0260282D */  daddu     $a1, $s3, $zero
/* DCEA04 80241D34 0C09059F */  jal       func_8024167C
/* DCEA08 80241D38 02A0302D */   daddu    $a2, $s5, $zero
/* DCEA0C 80241D3C 0280202D */  daddu     $a0, $s4, $zero
/* DCEA10 80241D40 0260282D */  daddu     $a1, $s3, $zero
/* DCEA14 80241D44 0C0905BC */  jal       func_802416F0
/* DCEA18 80241D48 02A0302D */   daddu    $a2, $s5, $zero
/* DCEA1C 80241D4C 0809076D */  j         .L80241DB4
/* DCEA20 80241D50 00000000 */   nop      
/* DCEA24 80241D54 0280202D */  daddu     $a0, $s4, $zero
/* DCEA28 80241D58 0260282D */  daddu     $a1, $s3, $zero
/* DCEA2C 80241D5C 0C0905DA */  jal       func_80241768
/* DCEA30 80241D60 02A0302D */   daddu    $a2, $s5, $zero
/* DCEA34 80241D64 0280202D */  daddu     $a0, $s4, $zero
/* DCEA38 80241D68 0260282D */  daddu     $a1, $s3, $zero
/* DCEA3C 80241D6C 0C090626 */  jal       func_80241898
/* DCEA40 80241D70 02A0302D */   daddu    $a2, $s5, $zero
/* DCEA44 80241D74 0809076D */  j         .L80241DB4
/* DCEA48 80241D78 00000000 */   nop      
/* DCEA4C 80241D7C 0280202D */  daddu     $a0, $s4, $zero
/* DCEA50 80241D80 0260282D */  daddu     $a1, $s3, $zero
/* DCEA54 80241D84 0C09066E */  jal       func_802419B8
/* DCEA58 80241D88 02A0302D */   daddu    $a2, $s5, $zero
/* DCEA5C 80241D8C 0809076D */  j         .L80241DB4
/* DCEA60 80241D90 00000000 */   nop      
/* DCEA64 80241D94 0280202D */  daddu     $a0, $s4, $zero
/* DCEA68 80241D98 0260282D */  daddu     $a1, $s3, $zero
/* DCEA6C 80241D9C 0C090688 */  jal       func_80241A20
/* DCEA70 80241DA0 02A0302D */   daddu    $a2, $s5, $zero
/* DCEA74 80241DA4 0809076D */  j         .L80241DB4
/* DCEA78 80241DA8 00000000 */   nop      
/* DCEA7C 80241DAC 0C0129CF */  jal       func_8004A73C
/* DCEA80 80241DB0 0280202D */   daddu    $a0, $s4, $zero
.L80241DB4:
/* DCEA84 80241DB4 8FBF0060 */  lw        $ra, 0x60($sp)
/* DCEA88 80241DB8 8FB5005C */  lw        $s5, 0x5c($sp)
/* DCEA8C 80241DBC 8FB40058 */  lw        $s4, 0x58($sp)
/* DCEA90 80241DC0 8FB30054 */  lw        $s3, 0x54($sp)
/* DCEA94 80241DC4 8FB20050 */  lw        $s2, 0x50($sp)
/* DCEA98 80241DC8 8FB1004C */  lw        $s1, 0x4c($sp)
/* DCEA9C 80241DCC 8FB00048 */  lw        $s0, 0x48($sp)
/* DCEAA0 80241DD0 0000102D */  daddu     $v0, $zero, $zero
/* DCEAA4 80241DD4 03E00008 */  jr        $ra
/* DCEAA8 80241DD8 27BD0068 */   addiu    $sp, $sp, 0x68
