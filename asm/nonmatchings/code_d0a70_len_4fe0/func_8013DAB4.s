.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8013DAB4
/* 0D41B4 8013DAB4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0D41B8 8013DAB8 AFB40038 */  sw    $s4, 0x38($sp)
/* 0D41BC 8013DABC 0080A02D */  daddu $s4, $a0, $zero
/* 0D41C0 8013DAC0 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0D41C4 8013DAC4 AFBE0048 */  sw    $fp, 0x48($sp)
/* 0D41C8 8013DAC8 AFB70044 */  sw    $s7, 0x44($sp)
/* 0D41CC 8013DACC AFB60040 */  sw    $s6, 0x40($sp)
/* 0D41D0 8013DAD0 AFB5003C */  sw    $s5, 0x3c($sp)
/* 0D41D4 8013DAD4 AFB30034 */  sw    $s3, 0x34($sp)
/* 0D41D8 8013DAD8 AFB20030 */  sw    $s2, 0x30($sp)
/* 0D41DC 8013DADC AFB1002C */  sw    $s1, 0x2c($sp)
/* 0D41E0 8013DAE0 AFB00028 */  sw    $s0, 0x28($sp)
/* 0D41E4 8013DAE4 AFA50054 */  sw    $a1, 0x54($sp)
/* 0D41E8 8013DAE8 8E820014 */  lw    $v0, 0x14($s4)
/* 0D41EC 8013DAEC 30420020 */  andi  $v0, $v0, 0x20
/* 0D41F0 8013DAF0 14400030 */  bnez  $v0, .L8013DBB4
/* 0D41F4 8013DAF4 3C03E300 */   lui   $v1, 0xe300
/* 0D41F8 8013DAF8 34631001 */  ori   $v1, $v1, 0x1001
/* 0D41FC 8013DAFC 3C06F500 */  lui   $a2, 0xf500
/* 0D4200 8013DB00 34C60100 */  ori   $a2, $a2, 0x100
/* 0D4204 8013DB04 3C070703 */  lui   $a3, 0x703
/* 0D4208 8013DB08 3C04800A */  lui   $a0, 0x800a
/* 0D420C 8013DB0C 2484A66C */  addiu $a0, $a0, -0x5994
/* 0D4210 8013DB10 8C820000 */  lw    $v0, ($a0)
/* 0D4214 8013DB14 34E7C000 */  ori   $a3, $a3, 0xc000
/* 0D4218 8013DB18 0040282D */  daddu $a1, $v0, $zero
/* 0D421C 8013DB1C 24420008 */  addiu $v0, $v0, 8
/* 0D4220 8013DB20 AC820000 */  sw    $v0, ($a0)
/* 0D4224 8013DB24 ACA30000 */  sw    $v1, ($a1)
/* 0D4228 8013DB28 34038000 */  ori   $v1, $zero, 0x8000
/* 0D422C 8013DB2C ACA30004 */  sw    $v1, 4($a1)
/* 0D4230 8013DB30 24430008 */  addiu $v1, $v0, 8
/* 0D4234 8013DB34 AC830000 */  sw    $v1, ($a0)
/* 0D4238 8013DB38 3C058015 */  lui   $a1, 0x8015
/* 0D423C 8013DB3C 8CA5EE10 */  lw    $a1, -0x11f0($a1)
/* 0D4240 8013DB40 3C03FD10 */  lui   $v1, 0xfd10
/* 0D4244 8013DB44 AC430000 */  sw    $v1, ($v0)
/* 0D4248 8013DB48 24430010 */  addiu $v1, $v0, 0x10
/* 0D424C 8013DB4C AC830000 */  sw    $v1, ($a0)
/* 0D4250 8013DB50 8CA50004 */  lw    $a1, 4($a1)
/* 0D4254 8013DB54 3C03E800 */  lui   $v1, 0xe800
/* 0D4258 8013DB58 AC430008 */  sw    $v1, 8($v0)
/* 0D425C 8013DB5C 24430018 */  addiu $v1, $v0, 0x18
/* 0D4260 8013DB60 AC40000C */  sw    $zero, 0xc($v0)
/* 0D4264 8013DB64 AC830000 */  sw    $v1, ($a0)
/* 0D4268 8013DB68 3C030700 */  lui   $v1, 0x700
/* 0D426C 8013DB6C AC430014 */  sw    $v1, 0x14($v0)
/* 0D4270 8013DB70 24430020 */  addiu $v1, $v0, 0x20
/* 0D4274 8013DB74 AC460010 */  sw    $a2, 0x10($v0)
/* 0D4278 8013DB78 AC830000 */  sw    $v1, ($a0)
/* 0D427C 8013DB7C 3C03E600 */  lui   $v1, 0xe600
/* 0D4280 8013DB80 AC430018 */  sw    $v1, 0x18($v0)
/* 0D4284 8013DB84 24430028 */  addiu $v1, $v0, 0x28
/* 0D4288 8013DB88 AC40001C */  sw    $zero, 0x1c($v0)
/* 0D428C 8013DB8C AC830000 */  sw    $v1, ($a0)
/* 0D4290 8013DB90 3C03F000 */  lui   $v1, 0xf000
/* 0D4294 8013DB94 AC430020 */  sw    $v1, 0x20($v0)
/* 0D4298 8013DB98 24430030 */  addiu $v1, $v0, 0x30
/* 0D429C 8013DB9C AC470024 */  sw    $a3, 0x24($v0)
/* 0D42A0 8013DBA0 AC830000 */  sw    $v1, ($a0)
/* 0D42A4 8013DBA4 3C03E700 */  lui   $v1, 0xe700
/* 0D42A8 8013DBA8 AC430028 */  sw    $v1, 0x28($v0)
/* 0D42AC 8013DBAC AC40002C */  sw    $zero, 0x2c($v0)
/* 0D42B0 8013DBB0 AC450004 */  sw    $a1, 4($v0)
.L8013DBB4:
/* 0D42B4 8013DBB4 92820004 */  lbu   $v0, 4($s4)
/* 0D42B8 8013DBB8 968E0008 */  lhu   $t6, 8($s4)
/* 0D42BC 8013DBBC 104001C0 */  beqz  $v0, .L8013E2C0
/* 0D42C0 8013DBC0 0000A82D */   daddu $s5, $zero, $zero
/* 0D42C4 8013DBC4 3C10800A */  lui   $s0, 0x800a
/* 0D42C8 8013DBC8 2610A66C */  addiu $s0, $s0, -0x5994
/* 0D42CC 8013DBCC 3C1EF540 */  lui   $fp, 0xf540
/* 0D42D0 8013DBD0 3C17F200 */  lui   $s7, 0xf200
.L8013DBD4:
/* 0D42D4 8013DBD4 92830003 */  lbu   $v1, 3($s4)
/* 0D42D8 8013DBD8 106001B4 */  beqz  $v1, .L8013E2AC
/* 0D42DC 8013DBDC 0000902D */   daddu $s2, $zero, $zero
/* 0D42E0 8013DBE0 24630001 */  addiu $v1, $v1, 1
.L8013DBE4:
/* 0D42E4 8013DBE4 02A30018 */  mult  $s5, $v1
/* 0D42E8 8013DBE8 00004012 */  mflo  $t0
/* 0D42EC 8013DBEC 26A20001 */  addiu $v0, $s5, 1
/* 0D42F0 8013DBF0 00000000 */  nop   
/* 0D42F4 8013DBF4 00430018 */  mult  $v0, $v1
/* 0D42F8 8013DBF8 01C81021 */  addu  $v0, $t6, $t0
/* 0D42FC 8013DBFC 00528821 */  addu  $s1, $v0, $s2
/* 0D4300 8013DC00 262F0001 */  addiu $t7, $s1, 1
/* 0D4304 8013DC04 00001812 */  mflo  $v1
/* 0D4308 8013DC08 01C31021 */  addu  $v0, $t6, $v1
/* 0D430C 8013DC0C 0052B021 */  addu  $s6, $v0, $s2
/* 0D4310 8013DC10 8E830014 */  lw    $v1, 0x14($s4)
/* 0D4314 8013DC14 30620020 */  andi  $v0, $v1, 0x20
/* 0D4318 8013DC18 14400173 */  bnez  $v0, .L8013E1E8
/* 0D431C 8013DC1C 26D30001 */   addiu $s3, $s6, 1
/* 0D4320 8013DC20 3C028015 */  lui   $v0, 0x8015
/* 0D4324 8013DC24 8C421328 */  lw    $v0, 0x1328($v0)
/* 0D4328 8013DC28 94420000 */  lhu   $v0, ($v0)
/* 0D432C 8013DC2C 30420001 */  andi  $v0, $v0, 1
/* 0D4330 8013DC30 504000E9 */  beql  $v0, $zero, .L8013DFD8
/* 0D4334 8013DC34 3C08070A */   lui   $t0, 0x70a
/* 0D4338 8013DC38 3C028015 */  lui   $v0, 0x8015
/* 0D433C 8013DC3C 8C426954 */  lw    $v0, 0x6954($v0)
/* 0D4340 8013DC40 90420000 */  lbu   $v0, ($v0)
/* 0D4344 8013DC44 104000E3 */  beqz  $v0, .L8013DFD4
/* 0D4348 8013DC48 3C020018 */   lui   $v0, 0x18
/* 0D434C 8013DC4C 00621024 */  and   $v0, $v1, $v0
/* 0D4350 8013DC50 504000E1 */  beql  $v0, $zero, .L8013DFD8
/* 0D4354 8013DC54 3C08070A */   lui   $t0, 0x70a
/* 0D4358 8013DC58 92830002 */  lbu   $v1, 2($s4)
/* 0D435C 8013DC5C 10600005 */  beqz  $v1, .L8013DC74
/* 0D4360 8013DC60 24020002 */   addiu $v0, $zero, 2
/* 0D4364 8013DC64 10620003 */  beq   $v1, $v0, .L8013DC74
/* 0D4368 8013DC68 24020007 */   addiu $v0, $zero, 7
/* 0D436C 8013DC6C 146200DA */  bne   $v1, $v0, .L8013DFD8
/* 0D4370 8013DC70 3C08070A */   lui   $t0, 0x70a
.L8013DC74:
/* 0D4374 8013DC74 3C08070A */  lui   $t0, 0x70a
/* 0D4378 8013DC78 35080280 */  ori   $t0, $t0, 0x280
/* 0D437C 8013DC7C 3C09010A */  lui   $t1, 0x10a
/* 0D4380 8013DC80 35290280 */  ori   $t1, $t1, 0x280
/* 0D4384 8013DC84 3C0B001A */  lui   $t3, 0x1a
/* 0D4388 8013DC88 356B0280 */  ori   $t3, $t3, 0x280
/* 0D438C 8013DC8C 3C0AF510 */  lui   $t2, 0xf510
/* 0D4390 8013DC90 354A0900 */  ori   $t2, $t2, 0x900
/* 0D4394 8013DC94 3C0C020F */  lui   $t4, 0x20f
/* 0D4398 8013DC98 358CC000 */  ori   $t4, $t4, 0xc000
/* 0D439C 8013DC9C 8E050000 */  lw    $a1, ($s0)
/* 0D43A0 8013DCA0 3C048015 */  lui   $a0, 0x8015
/* 0D43A4 8013DCA4 8C84EE10 */  lw    $a0, -0x11f0($a0)
/* 0D43A8 8013DCA8 00A0302D */  daddu $a2, $a1, $zero
/* 0D43AC 8013DCAC 24A50008 */  addiu $a1, $a1, 8
/* 0D43B0 8013DCB0 AE050000 */  sw    $a1, ($s0)
/* 0D43B4 8013DCB4 94820008 */  lhu   $v0, 8($a0)
/* 0D43B8 8013DCB8 24A30008 */  addiu $v1, $a1, 8
/* 0D43BC 8013DCBC AE030000 */  sw    $v1, ($s0)
/* 0D43C0 8013DCC0 3C03FD48 */  lui   $v1, 0xfd48
/* 0D43C4 8013DCC4 00021042 */  srl   $v0, $v0, 1
/* 0D43C8 8013DCC8 2442FFFF */  addiu $v0, $v0, -1
/* 0D43CC 8013DCCC 30420FFF */  andi  $v0, $v0, 0xfff
/* 0D43D0 8013DCD0 00431025 */  or    $v0, $v0, $v1
/* 0D43D4 8013DCD4 ACC20000 */  sw    $v0, ($a2)
/* 0D43D8 8013DCD8 8C830000 */  lw    $v1, ($a0)
/* 0D43DC 8013DCDC 24A20010 */  addiu $v0, $a1, 0x10
/* 0D43E0 8013DCE0 AE020000 */  sw    $v0, ($s0)
/* 0D43E4 8013DCE4 3C028015 */  lui   $v0, 0x8015
/* 0D43E8 8013DCE8 8C426950 */  lw    $v0, 0x6950($v0)
/* 0D43EC 8013DCEC 00133900 */  sll   $a3, $s3, 4
/* 0D43F0 8013DCF0 00E23821 */  addu  $a3, $a3, $v0
/* 0D43F4 8013DCF4 ACC30004 */  sw    $v1, 4($a2)
/* 0D43F8 8013DCF8 00113100 */  sll   $a2, $s1, 4
/* 0D43FC 8013DCFC 00C23021 */  addu  $a2, $a2, $v0
/* 0D4400 8013DD00 94E20008 */  lhu   $v0, 8($a3)
/* 0D4404 8013DD04 94C40008 */  lhu   $a0, 8($a2)
/* 0D4408 8013DD08 24A30018 */  addiu $v1, $a1, 0x18
/* 0D440C 8013DD0C AE030000 */  sw    $v1, ($s0)
/* 0D4410 8013DD10 3C03E600 */  lui   $v1, 0xe600
/* 0D4414 8013DD14 ACA30008 */  sw    $v1, 8($a1)
/* 0D4418 8013DD18 3C03F548 */  lui   $v1, 0xf548
/* 0D441C 8013DD1C ACA80004 */  sw    $t0, 4($a1)
/* 0D4420 8013DD20 ACA0000C */  sw    $zero, 0xc($a1)
/* 0D4424 8013DD24 00021400 */  sll   $v0, $v0, 0x10
/* 0D4428 8013DD28 00021543 */  sra   $v0, $v0, 0x15
/* 0D442C 8013DD2C 00042400 */  sll   $a0, $a0, 0x10
/* 0D4430 8013DD30 00042543 */  sra   $a0, $a0, 0x15
/* 0D4434 8013DD34 00441023 */  subu  $v0, $v0, $a0
/* 0D4438 8013DD38 00021043 */  sra   $v0, $v0, 1
/* 0D443C 8013DD3C 24420007 */  addiu $v0, $v0, 7
/* 0D4440 8013DD40 000210C3 */  sra   $v0, $v0, 3
/* 0D4444 8013DD44 304201FF */  andi  $v0, $v0, 0x1ff
/* 0D4448 8013DD48 00021240 */  sll   $v0, $v0, 9
/* 0D444C 8013DD4C 00431025 */  or    $v0, $v0, $v1
/* 0D4450 8013DD50 ACA20000 */  sw    $v0, ($a1)
/* 0D4454 8013DD54 24A20020 */  addiu $v0, $a1, 0x20
/* 0D4458 8013DD58 94C30008 */  lhu   $v1, 8($a2)
/* 0D445C 8013DD5C 3C04F400 */  lui   $a0, 0xf400
/* 0D4460 8013DD60 AE020000 */  sw    $v0, ($s0)
/* 0D4464 8013DD64 94C2000A */  lhu   $v0, 0xa($a2)
/* 0D4468 8013DD68 00031C00 */  sll   $v1, $v1, 0x10
/* 0D446C 8013DD6C 00031D43 */  sra   $v1, $v1, 0x15
/* 0D4470 8013DD70 2463FF00 */  addiu $v1, $v1, -0x100
/* 0D4474 8013DD74 00031840 */  sll   $v1, $v1, 1
/* 0D4478 8013DD78 30630FFF */  andi  $v1, $v1, 0xfff
/* 0D447C 8013DD7C 00031B00 */  sll   $v1, $v1, 0xc
/* 0D4480 8013DD80 00021400 */  sll   $v0, $v0, 0x10
/* 0D4484 8013DD84 00021543 */  sra   $v0, $v0, 0x15
/* 0D4488 8013DD88 2442FF00 */  addiu $v0, $v0, -0x100
/* 0D448C 8013DD8C 00021080 */  sll   $v0, $v0, 2
/* 0D4490 8013DD90 30420FFF */  andi  $v0, $v0, 0xfff
/* 0D4494 8013DD94 00441025 */  or    $v0, $v0, $a0
/* 0D4498 8013DD98 00621825 */  or    $v1, $v1, $v0
/* 0D449C 8013DD9C ACA30010 */  sw    $v1, 0x10($a1)
/* 0D44A0 8013DDA0 94E20008 */  lhu   $v0, 8($a3)
/* 0D44A4 8013DDA4 94E3000A */  lhu   $v1, 0xa($a3)
/* 0D44A8 8013DDA8 3C04E700 */  lui   $a0, 0xe700
/* 0D44AC 8013DDAC ACA40018 */  sw    $a0, 0x18($a1)
/* 0D44B0 8013DDB0 3C040700 */  lui   $a0, 0x700
/* 0D44B4 8013DDB4 ACA0001C */  sw    $zero, 0x1c($a1)
/* 0D44B8 8013DDB8 00021400 */  sll   $v0, $v0, 0x10
/* 0D44BC 8013DDBC 00021543 */  sra   $v0, $v0, 0x15
/* 0D44C0 8013DDC0 2442FEFF */  addiu $v0, $v0, -0x101
/* 0D44C4 8013DDC4 00021040 */  sll   $v0, $v0, 1
/* 0D44C8 8013DDC8 30420FFF */  andi  $v0, $v0, 0xfff
/* 0D44CC 8013DDCC 00021300 */  sll   $v0, $v0, 0xc
/* 0D44D0 8013DDD0 00031C00 */  sll   $v1, $v1, 0x10
/* 0D44D4 8013DDD4 00031D43 */  sra   $v1, $v1, 0x15
/* 0D44D8 8013DDD8 2463FEFF */  addiu $v1, $v1, -0x101
/* 0D44DC 8013DDDC 00031880 */  sll   $v1, $v1, 2
/* 0D44E0 8013DDE0 30630FFF */  andi  $v1, $v1, 0xfff
/* 0D44E4 8013DDE4 00641825 */  or    $v1, $v1, $a0
/* 0D44E8 8013DDE8 00431025 */  or    $v0, $v0, $v1
/* 0D44EC 8013DDEC ACA20014 */  sw    $v0, 0x14($a1)
/* 0D44F0 8013DDF0 94E20008 */  lhu   $v0, 8($a3)
/* 0D44F4 8013DDF4 94C40008 */  lhu   $a0, 8($a2)
/* 0D44F8 8013DDF8 24A30028 */  addiu $v1, $a1, 0x28
/* 0D44FC 8013DDFC AE030000 */  sw    $v1, ($s0)
/* 0D4500 8013DE00 ACA90024 */  sw    $t1, 0x24($a1)
/* 0D4504 8013DE04 00021400 */  sll   $v0, $v0, 0x10
/* 0D4508 8013DE08 00021543 */  sra   $v0, $v0, 0x15
/* 0D450C 8013DE0C 00042400 */  sll   $a0, $a0, 0x10
/* 0D4510 8013DE10 00042543 */  sra   $a0, $a0, 0x15
/* 0D4514 8013DE14 00441023 */  subu  $v0, $v0, $a0
/* 0D4518 8013DE18 00021043 */  sra   $v0, $v0, 1
/* 0D451C 8013DE1C 24420007 */  addiu $v0, $v0, 7
/* 0D4520 8013DE20 000210C3 */  sra   $v0, $v0, 3
/* 0D4524 8013DE24 304201FF */  andi  $v0, $v0, 0x1ff
/* 0D4528 8013DE28 00021240 */  sll   $v0, $v0, 9
/* 0D452C 8013DE2C 005E1025 */  or    $v0, $v0, $fp
/* 0D4530 8013DE30 ACA20020 */  sw    $v0, 0x20($a1)
/* 0D4534 8013DE34 24A20030 */  addiu $v0, $a1, 0x30
/* 0D4538 8013DE38 94C30008 */  lhu   $v1, 8($a2)
/* 0D453C 8013DE3C 3C040100 */  lui   $a0, 0x100
/* 0D4540 8013DE40 AE020000 */  sw    $v0, ($s0)
/* 0D4544 8013DE44 94C2000A */  lhu   $v0, 0xa($a2)
/* 0D4548 8013DE48 000318C2 */  srl   $v1, $v1, 3
/* 0D454C 8013DE4C 30630FFC */  andi  $v1, $v1, 0xffc
/* 0D4550 8013DE50 00031B00 */  sll   $v1, $v1, 0xc
/* 0D4554 8013DE54 000210C2 */  srl   $v0, $v0, 3
/* 0D4558 8013DE58 30420FFC */  andi  $v0, $v0, 0xffc
/* 0D455C 8013DE5C 00571025 */  or    $v0, $v0, $s7
/* 0D4560 8013DE60 00621825 */  or    $v1, $v1, $v0
/* 0D4564 8013DE64 24A20038 */  addiu $v0, $a1, 0x38
/* 0D4568 8013DE68 ACA30028 */  sw    $v1, 0x28($a1)
/* 0D456C 8013DE6C AE020000 */  sw    $v0, ($s0)
/* 0D4570 8013DE70 94E30008 */  lhu   $v1, 8($a3)
/* 0D4574 8013DE74 24A20040 */  addiu $v0, $a1, 0x40
/* 0D4578 8013DE78 AE020000 */  sw    $v0, ($s0)
/* 0D457C 8013DE7C 94E2000A */  lhu   $v0, 0xa($a3)
/* 0D4580 8013DE80 00031C00 */  sll   $v1, $v1, 0x10
/* 0D4584 8013DE84 00031D43 */  sra   $v1, $v1, 0x15
/* 0D4588 8013DE88 2463FFFF */  addiu $v1, $v1, -1
/* 0D458C 8013DE8C 00031880 */  sll   $v1, $v1, 2
/* 0D4590 8013DE90 30630FFF */  andi  $v1, $v1, 0xfff
/* 0D4594 8013DE94 00031B00 */  sll   $v1, $v1, 0xc
/* 0D4598 8013DE98 00021400 */  sll   $v0, $v0, 0x10
/* 0D459C 8013DE9C 00021543 */  sra   $v0, $v0, 0x15
/* 0D45A0 8013DEA0 2442FFFF */  addiu $v0, $v0, -1
/* 0D45A4 8013DEA4 00021080 */  sll   $v0, $v0, 2
/* 0D45A8 8013DEA8 30420FFF */  andi  $v0, $v0, 0xfff
/* 0D45AC 8013DEAC 00441025 */  or    $v0, $v0, $a0
/* 0D45B0 8013DEB0 00621825 */  or    $v1, $v1, $v0
/* 0D45B4 8013DEB4 ACA3002C */  sw    $v1, 0x2c($a1)
/* 0D45B8 8013DEB8 94E20008 */  lhu   $v0, 8($a3)
/* 0D45BC 8013DEBC 94C40008 */  lhu   $a0, 8($a2)
/* 0D45C0 8013DEC0 24A30048 */  addiu $v1, $a1, 0x48
/* 0D45C4 8013DEC4 AE030000 */  sw    $v1, ($s0)
/* 0D45C8 8013DEC8 3C030200 */  lui   $v1, 0x200
/* 0D45CC 8013DECC ACAB0034 */  sw    $t3, 0x34($a1)
/* 0D45D0 8013DED0 ACAA0038 */  sw    $t2, 0x38($a1)
/* 0D45D4 8013DED4 ACA3003C */  sw    $v1, 0x3c($a1)
/* 0D45D8 8013DED8 ACB70040 */  sw    $s7, 0x40($a1)
/* 0D45DC 8013DEDC ACAC0044 */  sw    $t4, 0x44($a1)
/* 0D45E0 8013DEE0 00021400 */  sll   $v0, $v0, 0x10
/* 0D45E4 8013DEE4 00021543 */  sra   $v0, $v0, 0x15
/* 0D45E8 8013DEE8 00042400 */  sll   $a0, $a0, 0x10
/* 0D45EC 8013DEEC 00042543 */  sra   $a0, $a0, 0x15
/* 0D45F0 8013DEF0 00441023 */  subu  $v0, $v0, $a0
/* 0D45F4 8013DEF4 00021043 */  sra   $v0, $v0, 1
/* 0D45F8 8013DEF8 24420007 */  addiu $v0, $v0, 7
/* 0D45FC 8013DEFC 000210C3 */  sra   $v0, $v0, 3
/* 0D4600 8013DF00 304201FF */  andi  $v0, $v0, 0x1ff
/* 0D4604 8013DF04 00021240 */  sll   $v0, $v0, 9
/* 0D4608 8013DF08 005E1025 */  or    $v0, $v0, $fp
/* 0D460C 8013DF0C ACA20030 */  sw    $v0, 0x30($a1)
/* 0D4610 8013DF10 92830002 */  lbu   $v1, 2($s4)
/* 0D4614 8013DF14 24020002 */  addiu $v0, $zero, 2
/* 0D4618 8013DF18 10620009 */  beq   $v1, $v0, .L8013DF40
/* 0D461C 8013DF1C 240D00FF */   addiu $t5, $zero, 0xff
/* 0D4620 8013DF20 28620003 */  slti  $v0, $v1, 3
/* 0D4624 8013DF24 1440000A */  bnez  $v0, .L8013DF50
/* 0D4628 8013DF28 00111100 */   sll   $v0, $s1, 4
/* 0D462C 8013DF2C 24020007 */  addiu $v0, $zero, 7
/* 0D4630 8013DF30 10620006 */  beq   $v1, $v0, .L8013DF4C
/* 0D4634 8013DF34 00111100 */   sll   $v0, $s1, 4
/* 0D4638 8013DF38 0804F7D4 */  j     .L8013DF50
/* 0D463C 8013DF3C 00000000 */   nop   

.L8013DF40:
/* 0D4640 8013DF40 8E8D0038 */  lw    $t5, 0x38($s4)
/* 0D4644 8013DF44 0804F7D4 */  j     .L8013DF50
/* 0D4648 8013DF48 00111100 */   sll   $v0, $s1, 4

.L8013DF4C:
/* 0D464C 8013DF4C 240DFFFF */  addiu $t5, $zero, -1
.L8013DF50:
/* 0D4650 8013DF50 3C048015 */  lui   $a0, 0x8015
/* 0D4654 8013DF54 8C846950 */  lw    $a0, 0x6950($a0)
/* 0D4658 8013DF58 00131900 */  sll   $v1, $s3, 4
/* 0D465C 8013DF5C 00441021 */  addu  $v0, $v0, $a0
/* 0D4660 8013DF60 00641821 */  addu  $v1, $v1, $a0
/* 0D4664 8013DF64 94450008 */  lhu   $a1, 8($v0)
/* 0D4668 8013DF68 9446000A */  lhu   $a2, 0xa($v0)
/* 0D466C 8013DF6C 94670008 */  lhu   $a3, 8($v1)
/* 0D4670 8013DF70 9462000A */  lhu   $v0, 0xa($v1)
/* 0D4674 8013DF74 8FA40054 */  lw    $a0, 0x54($sp)
/* 0D4678 8013DF78 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0D467C 8013DF7C 00021400 */  sll   $v0, $v0, 0x10
/* 0D4680 8013DF80 00021543 */  sra   $v0, $v0, 0x15
/* 0D4684 8013DF84 2442FF00 */  addiu $v0, $v0, -0x100
/* 0D4688 8013DF88 00052C00 */  sll   $a1, $a1, 0x10
/* 0D468C 8013DF8C 00052D43 */  sra   $a1, $a1, 0x15
/* 0D4690 8013DF90 00063400 */  sll   $a2, $a2, 0x10
/* 0D4694 8013DF94 00063543 */  sra   $a2, $a2, 0x15
/* 0D4698 8013DF98 00073C00 */  sll   $a3, $a3, 0x10
/* 0D469C 8013DF9C 00073D43 */  sra   $a3, $a3, 0x15
/* 0D46A0 8013DFA0 24A5FF00 */  addiu $a1, $a1, -0x100
/* 0D46A4 8013DFA4 24C6FF00 */  addiu $a2, $a2, -0x100
/* 0D46A8 8013DFA8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0D46AC 8013DFAC 8E820078 */  lw    $v0, 0x78($s4)
/* 0D46B0 8013DFB0 24E7FF00 */  addiu $a3, $a3, -0x100
/* 0D46B4 8013DFB4 AFAE0020 */  sw    $t6, 0x20($sp)
/* 0D46B8 8013DFB8 AFAF0024 */  sw    $t7, 0x24($sp)
/* 0D46BC 8013DFBC 0C052071 */  jal   func_801481C4
/* 0D46C0 8013DFC0 AFA20018 */   sw    $v0, 0x18($sp)
/* 0D46C4 8013DFC4 8FAE0020 */  lw    $t6, 0x20($sp)
/* 0D46C8 8013DFC8 8FAF0024 */  lw    $t7, 0x24($sp)
/* 0D46CC 8013DFCC 0804F87B */  j     .L8013E1EC
/* 0D46D0 8013DFD0 3C020100 */   lui   $v0, 0x100

.L8013DFD4:
/* 0D46D4 8013DFD4 3C08070A */  lui   $t0, 0x70a
.L8013DFD8:
/* 0D46D8 8013DFD8 35080280 */  ori   $t0, $t0, 0x280
/* 0D46DC 8013DFDC 3C09000A */  lui   $t1, 0xa
/* 0D46E0 8013DFE0 35290280 */  ori   $t1, $t1, 0x280
/* 0D46E4 8013DFE4 8E050000 */  lw    $a1, ($s0)
/* 0D46E8 8013DFE8 3C048015 */  lui   $a0, 0x8015
/* 0D46EC 8013DFEC 8C84EE10 */  lw    $a0, -0x11f0($a0)
/* 0D46F0 8013DFF0 00A0302D */  daddu $a2, $a1, $zero
/* 0D46F4 8013DFF4 24A50008 */  addiu $a1, $a1, 8
/* 0D46F8 8013DFF8 AE050000 */  sw    $a1, ($s0)
/* 0D46FC 8013DFFC 94820008 */  lhu   $v0, 8($a0)
/* 0D4700 8013E000 24A30008 */  addiu $v1, $a1, 8
/* 0D4704 8013E004 AE030000 */  sw    $v1, ($s0)
/* 0D4708 8013E008 3C03FD48 */  lui   $v1, 0xfd48
/* 0D470C 8013E00C 00021042 */  srl   $v0, $v0, 1
/* 0D4710 8013E010 2442FFFF */  addiu $v0, $v0, -1
/* 0D4714 8013E014 30420FFF */  andi  $v0, $v0, 0xfff
/* 0D4718 8013E018 00431025 */  or    $v0, $v0, $v1
/* 0D471C 8013E01C ACC20000 */  sw    $v0, ($a2)
/* 0D4720 8013E020 8C830000 */  lw    $v1, ($a0)
/* 0D4724 8013E024 24A20010 */  addiu $v0, $a1, 0x10
/* 0D4728 8013E028 AE020000 */  sw    $v0, ($s0)
/* 0D472C 8013E02C 3C028015 */  lui   $v0, 0x8015
/* 0D4730 8013E030 8C426950 */  lw    $v0, 0x6950($v0)
/* 0D4734 8013E034 00133900 */  sll   $a3, $s3, 4
/* 0D4738 8013E038 00E23821 */  addu  $a3, $a3, $v0
/* 0D473C 8013E03C ACC30004 */  sw    $v1, 4($a2)
/* 0D4740 8013E040 00113100 */  sll   $a2, $s1, 4
/* 0D4744 8013E044 00C23021 */  addu  $a2, $a2, $v0
/* 0D4748 8013E048 94E20008 */  lhu   $v0, 8($a3)
/* 0D474C 8013E04C 94C40008 */  lhu   $a0, 8($a2)
/* 0D4750 8013E050 24A30018 */  addiu $v1, $a1, 0x18
/* 0D4754 8013E054 AE030000 */  sw    $v1, ($s0)
/* 0D4758 8013E058 3C03E600 */  lui   $v1, 0xe600
/* 0D475C 8013E05C ACA30008 */  sw    $v1, 8($a1)
/* 0D4760 8013E060 3C03F548 */  lui   $v1, 0xf548
/* 0D4764 8013E064 ACA80004 */  sw    $t0, 4($a1)
/* 0D4768 8013E068 ACA0000C */  sw    $zero, 0xc($a1)
/* 0D476C 8013E06C 00021400 */  sll   $v0, $v0, 0x10
/* 0D4770 8013E070 00021543 */  sra   $v0, $v0, 0x15
/* 0D4774 8013E074 00042400 */  sll   $a0, $a0, 0x10
/* 0D4778 8013E078 00042543 */  sra   $a0, $a0, 0x15
/* 0D477C 8013E07C 00441023 */  subu  $v0, $v0, $a0
/* 0D4780 8013E080 00021043 */  sra   $v0, $v0, 1
/* 0D4784 8013E084 24420007 */  addiu $v0, $v0, 7
/* 0D4788 8013E088 000210C3 */  sra   $v0, $v0, 3
/* 0D478C 8013E08C 304201FF */  andi  $v0, $v0, 0x1ff
/* 0D4790 8013E090 00021240 */  sll   $v0, $v0, 9
/* 0D4794 8013E094 00431025 */  or    $v0, $v0, $v1
/* 0D4798 8013E098 ACA20000 */  sw    $v0, ($a1)
/* 0D479C 8013E09C 24A20020 */  addiu $v0, $a1, 0x20
/* 0D47A0 8013E0A0 94C30008 */  lhu   $v1, 8($a2)
/* 0D47A4 8013E0A4 3C04F400 */  lui   $a0, 0xf400
/* 0D47A8 8013E0A8 AE020000 */  sw    $v0, ($s0)
/* 0D47AC 8013E0AC 94C2000A */  lhu   $v0, 0xa($a2)
/* 0D47B0 8013E0B0 00031C00 */  sll   $v1, $v1, 0x10
/* 0D47B4 8013E0B4 00031D43 */  sra   $v1, $v1, 0x15
/* 0D47B8 8013E0B8 2463FF00 */  addiu $v1, $v1, -0x100
/* 0D47BC 8013E0BC 00031840 */  sll   $v1, $v1, 1
/* 0D47C0 8013E0C0 30630FFF */  andi  $v1, $v1, 0xfff
/* 0D47C4 8013E0C4 00031B00 */  sll   $v1, $v1, 0xc
/* 0D47C8 8013E0C8 00021400 */  sll   $v0, $v0, 0x10
/* 0D47CC 8013E0CC 00021543 */  sra   $v0, $v0, 0x15
/* 0D47D0 8013E0D0 2442FF00 */  addiu $v0, $v0, -0x100
/* 0D47D4 8013E0D4 00021080 */  sll   $v0, $v0, 2
/* 0D47D8 8013E0D8 30420FFF */  andi  $v0, $v0, 0xfff
/* 0D47DC 8013E0DC 00441025 */  or    $v0, $v0, $a0
/* 0D47E0 8013E0E0 00621825 */  or    $v1, $v1, $v0
/* 0D47E4 8013E0E4 ACA30010 */  sw    $v1, 0x10($a1)
/* 0D47E8 8013E0E8 94E20008 */  lhu   $v0, 8($a3)
/* 0D47EC 8013E0EC 94E3000A */  lhu   $v1, 0xa($a3)
/* 0D47F0 8013E0F0 3C04E700 */  lui   $a0, 0xe700
/* 0D47F4 8013E0F4 ACA40018 */  sw    $a0, 0x18($a1)
/* 0D47F8 8013E0F8 3C040700 */  lui   $a0, 0x700
/* 0D47FC 8013E0FC ACA0001C */  sw    $zero, 0x1c($a1)
/* 0D4800 8013E100 00021400 */  sll   $v0, $v0, 0x10
/* 0D4804 8013E104 00021543 */  sra   $v0, $v0, 0x15
/* 0D4808 8013E108 2442FEFF */  addiu $v0, $v0, -0x101
/* 0D480C 8013E10C 00021040 */  sll   $v0, $v0, 1
/* 0D4810 8013E110 30420FFF */  andi  $v0, $v0, 0xfff
/* 0D4814 8013E114 00021300 */  sll   $v0, $v0, 0xc
/* 0D4818 8013E118 00031C00 */  sll   $v1, $v1, 0x10
/* 0D481C 8013E11C 00031D43 */  sra   $v1, $v1, 0x15
/* 0D4820 8013E120 2463FEFF */  addiu $v1, $v1, -0x101
/* 0D4824 8013E124 00031880 */  sll   $v1, $v1, 2
/* 0D4828 8013E128 30630FFF */  andi  $v1, $v1, 0xfff
/* 0D482C 8013E12C 00641825 */  or    $v1, $v1, $a0
/* 0D4830 8013E130 00431025 */  or    $v0, $v0, $v1
/* 0D4834 8013E134 ACA20014 */  sw    $v0, 0x14($a1)
/* 0D4838 8013E138 94E20008 */  lhu   $v0, 8($a3)
/* 0D483C 8013E13C 94C40008 */  lhu   $a0, 8($a2)
/* 0D4840 8013E140 24A30028 */  addiu $v1, $a1, 0x28
/* 0D4844 8013E144 AE030000 */  sw    $v1, ($s0)
/* 0D4848 8013E148 ACA90024 */  sw    $t1, 0x24($a1)
/* 0D484C 8013E14C 00021400 */  sll   $v0, $v0, 0x10
/* 0D4850 8013E150 00021543 */  sra   $v0, $v0, 0x15
/* 0D4854 8013E154 00042400 */  sll   $a0, $a0, 0x10
/* 0D4858 8013E158 00042543 */  sra   $a0, $a0, 0x15
/* 0D485C 8013E15C 00441023 */  subu  $v0, $v0, $a0
/* 0D4860 8013E160 00021043 */  sra   $v0, $v0, 1
/* 0D4864 8013E164 24420007 */  addiu $v0, $v0, 7
/* 0D4868 8013E168 000210C3 */  sra   $v0, $v0, 3
/* 0D486C 8013E16C 304201FF */  andi  $v0, $v0, 0x1ff
/* 0D4870 8013E170 00021240 */  sll   $v0, $v0, 9
/* 0D4874 8013E174 005E1025 */  or    $v0, $v0, $fp
/* 0D4878 8013E178 ACA20020 */  sw    $v0, 0x20($a1)
/* 0D487C 8013E17C 94C30008 */  lhu   $v1, 8($a2)
/* 0D4880 8013E180 24A20030 */  addiu $v0, $a1, 0x30
/* 0D4884 8013E184 AE020000 */  sw    $v0, ($s0)
/* 0D4888 8013E188 94C2000A */  lhu   $v0, 0xa($a2)
/* 0D488C 8013E18C 000318C2 */  srl   $v1, $v1, 3
/* 0D4890 8013E190 30630FFC */  andi  $v1, $v1, 0xffc
/* 0D4894 8013E194 00031B00 */  sll   $v1, $v1, 0xc
/* 0D4898 8013E198 000210C2 */  srl   $v0, $v0, 3
/* 0D489C 8013E19C 30420FFC */  andi  $v0, $v0, 0xffc
/* 0D48A0 8013E1A0 00571025 */  or    $v0, $v0, $s7
/* 0D48A4 8013E1A4 00621825 */  or    $v1, $v1, $v0
/* 0D48A8 8013E1A8 ACA30028 */  sw    $v1, 0x28($a1)
/* 0D48AC 8013E1AC 94E30008 */  lhu   $v1, 8($a3)
/* 0D48B0 8013E1B0 94E2000A */  lhu   $v0, 0xa($a3)
/* 0D48B4 8013E1B4 00031C00 */  sll   $v1, $v1, 0x10
/* 0D48B8 8013E1B8 00031D43 */  sra   $v1, $v1, 0x15
/* 0D48BC 8013E1BC 2463FFFF */  addiu $v1, $v1, -1
/* 0D48C0 8013E1C0 00031880 */  sll   $v1, $v1, 2
/* 0D48C4 8013E1C4 30630FFF */  andi  $v1, $v1, 0xfff
/* 0D48C8 8013E1C8 00031B00 */  sll   $v1, $v1, 0xc
/* 0D48CC 8013E1CC 00021400 */  sll   $v0, $v0, 0x10
/* 0D48D0 8013E1D0 00021543 */  sra   $v0, $v0, 0x15
/* 0D48D4 8013E1D4 2442FFFF */  addiu $v0, $v0, -1
/* 0D48D8 8013E1D8 00021080 */  sll   $v0, $v0, 2
/* 0D48DC 8013E1DC 30420FFF */  andi  $v0, $v0, 0xfff
/* 0D48E0 8013E1E0 00621825 */  or    $v1, $v1, $v0
/* 0D48E4 8013E1E4 ACA3002C */  sw    $v1, 0x2c($a1)
.L8013E1E8:
/* 0D48E8 8013E1E8 3C020100 */  lui   $v0, 0x100
.L8013E1EC:
/* 0D48EC 8013E1EC 34421002 */  ori   $v0, $v0, 0x1002
/* 0D48F0 8013E1F0 3C060100 */  lui   $a2, 0x100
/* 0D48F4 8013E1F4 34C61004 */  ori   $a2, $a2, 0x1004
/* 0D48F8 8013E1F8 3C070100 */  lui   $a3, 0x100
/* 0D48FC 8013E1FC 34E71006 */  ori   $a3, $a3, 0x1006
/* 0D4900 8013E200 3C080100 */  lui   $t0, 0x100
/* 0D4904 8013E204 35081008 */  ori   $t0, $t0, 0x1008
/* 0D4908 8013E208 3C0A0600 */  lui   $t2, 0x600
/* 0D490C 8013E20C 354A0402 */  ori   $t2, $t2, 0x402
/* 0D4910 8013E210 8E030000 */  lw    $v1, ($s0)
/* 0D4914 8013E214 3C090002 */  lui   $t1, 2
/* 0D4918 8013E218 0060282D */  daddu $a1, $v1, $zero
/* 0D491C 8013E21C 24630008 */  addiu $v1, $v1, 8
/* 0D4920 8013E220 AE030000 */  sw    $v1, ($s0)
/* 0D4924 8013E224 3C048015 */  lui   $a0, 0x8015
/* 0D4928 8013E228 8C846950 */  lw    $a0, 0x6950($a0)
/* 0D492C 8013E22C 35290406 */  ori   $t1, $t1, 0x406
/* 0D4930 8013E230 ACA20000 */  sw    $v0, ($a1)
/* 0D4934 8013E234 00111100 */  sll   $v0, $s1, 4
/* 0D4938 8013E238 00821021 */  addu  $v0, $a0, $v0
/* 0D493C 8013E23C ACA20004 */  sw    $v0, 4($a1)
/* 0D4940 8013E240 24620008 */  addiu $v0, $v1, 8
/* 0D4944 8013E244 AE020000 */  sw    $v0, ($s0)
/* 0D4948 8013E248 000F1100 */  sll   $v0, $t7, 4
/* 0D494C 8013E24C 00821021 */  addu  $v0, $a0, $v0
/* 0D4950 8013E250 AC620004 */  sw    $v0, 4($v1)
/* 0D4954 8013E254 24620010 */  addiu $v0, $v1, 0x10
/* 0D4958 8013E258 AC660000 */  sw    $a2, ($v1)
/* 0D495C 8013E25C AE020000 */  sw    $v0, ($s0)
/* 0D4960 8013E260 00161100 */  sll   $v0, $s6, 4
/* 0D4964 8013E264 00821021 */  addu  $v0, $a0, $v0
/* 0D4968 8013E268 AC62000C */  sw    $v0, 0xc($v1)
/* 0D496C 8013E26C 24620018 */  addiu $v0, $v1, 0x18
/* 0D4970 8013E270 AC670008 */  sw    $a3, 8($v1)
/* 0D4974 8013E274 AE020000 */  sw    $v0, ($s0)
/* 0D4978 8013E278 00131100 */  sll   $v0, $s3, 4
/* 0D497C 8013E27C 00822021 */  addu  $a0, $a0, $v0
/* 0D4980 8013E280 24620020 */  addiu $v0, $v1, 0x20
/* 0D4984 8013E284 AC680010 */  sw    $t0, 0x10($v1)
/* 0D4988 8013E288 AC640014 */  sw    $a0, 0x14($v1)
/* 0D498C 8013E28C AE020000 */  sw    $v0, ($s0)
/* 0D4990 8013E290 AC6A0018 */  sw    $t2, 0x18($v1)
/* 0D4994 8013E294 AC69001C */  sw    $t1, 0x1c($v1)
/* 0D4998 8013E298 92830003 */  lbu   $v1, 3($s4)
/* 0D499C 8013E29C 26520001 */  addiu $s2, $s2, 1
/* 0D49A0 8013E2A0 0243102A */  slt   $v0, $s2, $v1
/* 0D49A4 8013E2A4 5440FE4F */  bnel  $v0, $zero, .L8013DBE4
/* 0D49A8 8013E2A8 24630001 */   addiu $v1, $v1, 1
.L8013E2AC:
/* 0D49AC 8013E2AC 92820004 */  lbu   $v0, 4($s4)
/* 0D49B0 8013E2B0 26B50001 */  addiu $s5, $s5, 1
/* 0D49B4 8013E2B4 02A2102A */  slt   $v0, $s5, $v0
/* 0D49B8 8013E2B8 1440FE46 */  bnez  $v0, .L8013DBD4
/* 0D49BC 8013E2BC 00000000 */   nop   
.L8013E2C0:
/* 0D49C0 8013E2C0 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0D49C4 8013E2C4 8FBE0048 */  lw    $fp, 0x48($sp)
/* 0D49C8 8013E2C8 8FB70044 */  lw    $s7, 0x44($sp)
/* 0D49CC 8013E2CC 8FB60040 */  lw    $s6, 0x40($sp)
/* 0D49D0 8013E2D0 8FB5003C */  lw    $s5, 0x3c($sp)
/* 0D49D4 8013E2D4 8FB40038 */  lw    $s4, 0x38($sp)
/* 0D49D8 8013E2D8 8FB30034 */  lw    $s3, 0x34($sp)
/* 0D49DC 8013E2DC 8FB20030 */  lw    $s2, 0x30($sp)
/* 0D49E0 8013E2E0 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0D49E4 8013E2E4 8FB00028 */  lw    $s0, 0x28($sp)
/* 0D49E8 8013E2E8 03E00008 */  jr    $ra
/* 0D49EC 8013E2EC 27BD0050 */   addiu $sp, $sp, 0x50
