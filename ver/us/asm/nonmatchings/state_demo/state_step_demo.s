.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel jtbl_80098460
.word L80038320_13720, L8003836C_1376C, L8003840C_1380C, L8003817C_1357C, L800381C8_135C8, 0, 0, 0

.section .text

glabel state_step_demo
/* 134F4 800380F4 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 134F8 800380F8 3C058007 */  lui       $a1, %hi(gGameStatusPtr)
/* 134FC 800380FC 8CA5419C */  lw        $a1, %lo(gGameStatusPtr)($a1)
/* 13500 80038100 3C048007 */  lui       $a0, %hi(D_80077AE0)
/* 13504 80038104 24847AE0 */  addiu     $a0, $a0, %lo(D_80077AE0)
/* 13508 80038108 AFBF002C */  sw        $ra, 0x2c($sp)
/* 1350C 8003810C AFB20028 */  sw        $s2, 0x28($sp)
/* 13510 80038110 AFB10024 */  sw        $s1, 0x24($sp)
/* 13514 80038114 AFB00020 */  sw        $s0, 0x20($sp)
/* 13518 80038118 80A30072 */  lb        $v1, 0x72($a1)
/* 1351C 8003811C 3C128011 */  lui       $s2, %hi(gPlayerData)
/* 13520 80038120 2652F290 */  addiu     $s2, $s2, %lo(gPlayerData)
/* 13524 80038124 00031040 */  sll       $v0, $v1, 1
/* 13528 80038128 00431021 */  addu      $v0, $v0, $v1
/* 1352C 8003812C 00021080 */  sll       $v0, $v0, 2
/* 13530 80038130 00448821 */  addu      $s1, $v0, $a0
/* 13534 80038134 24020004 */  addiu     $v0, $zero, 4
/* 13538 80038138 80A40071 */  lb        $a0, 0x71($a1)
/* 1353C 8003813C 96230000 */  lhu       $v1, ($s1)
/* 13540 80038140 50820001 */  beql      $a0, $v0, .L80038148
/* 13544 80038144 24030003 */   addiu    $v1, $zero, 3
.L80038148:
/* 13548 80038148 24020005 */  addiu     $v0, $zero, 5
/* 1354C 8003814C 50820001 */  beql      $a0, $v0, .L80038154
/* 13550 80038150 24030004 */   addiu    $v1, $zero, 4
.L80038154:
/* 13554 80038154 00031400 */  sll       $v0, $v1, 0x10
/* 13558 80038158 00021C03 */  sra       $v1, $v0, 0x10
/* 1355C 8003815C 2C620005 */  sltiu     $v0, $v1, 5
/* 13560 80038160 104000AC */  beqz      $v0, .L80038414
/* 13564 80038164 00031080 */   sll      $v0, $v1, 2
/* 13568 80038168 3C01800A */  lui       $at, %hi(jtbl_80098460)
/* 1356C 8003816C 00220821 */  addu      $at, $at, $v0
/* 13570 80038170 8C228460 */  lw        $v0, %lo(jtbl_80098460)($at)
/* 13574 80038174 00400008 */  jr        $v0
/* 13578 80038178 00000000 */   nop
glabel L8003817C_1357C
/* 1357C 8003817C 0C00CDF4 */  jal       intro_logos_set_fade_alpha
/* 13580 80038180 240400FF */   addiu    $a0, $zero, 0xff
/* 13584 80038184 0C00CDF8 */  jal       intro_logos_set_fade_color
/* 13588 80038188 240400E0 */   addiu    $a0, $zero, 0xe0
/* 1358C 8003818C 3C108007 */  lui       $s0, %hi(gGameStatusPtr)
/* 13590 80038190 2610419C */  addiu     $s0, $s0, %lo(gGameStatusPtr)
/* 13594 80038194 8E030000 */  lw        $v1, ($s0)
/* 13598 80038198 24020003 */  addiu     $v0, $zero, 3
/* 1359C 8003819C A06200AC */  sb        $v0, 0xac($v1)
/* 135A0 800381A0 3C03800A */  lui       $v1, %hi(gOverrideFlags)
/* 135A4 800381A4 2463A650 */  addiu     $v1, $v1, %lo(gOverrideFlags)
/* 135A8 800381A8 8C620000 */  lw        $v0, ($v1)
/* 135AC 800381AC 34420008 */  ori       $v0, $v0, 8
/* 135B0 800381B0 0C00CE1D */  jal       intro_logos_update_fade
/* 135B4 800381B4 AC620000 */   sw       $v0, ($v1)
/* 135B8 800381B8 8E030000 */  lw        $v1, ($s0)
/* 135BC 800381BC 24020005 */  addiu     $v0, $zero, 5
/* 135C0 800381C0 0800E105 */  j         .L80038414
/* 135C4 800381C4 A0620071 */   sb       $v0, 0x71($v1)
glabel L800381C8_135C8
/* 135C8 800381C8 3C108007 */  lui       $s0, %hi(gGameStatusPtr)
/* 135CC 800381CC 2610419C */  addiu     $s0, $s0, %lo(gGameStatusPtr)
/* 135D0 800381D0 8E040000 */  lw        $a0, ($s0)
/* 135D4 800381D4 808200AC */  lb        $v0, 0xac($a0)
/* 135D8 800381D8 908300AC */  lbu       $v1, 0xac($a0)
/* 135DC 800381DC 10400006 */  beqz      $v0, .L800381F8
/* 135E0 800381E0 2462FFFF */   addiu    $v0, $v1, -1
/* 135E4 800381E4 A08200AC */  sb        $v0, 0xac($a0)
/* 135E8 800381E8 8E020000 */  lw        $v0, ($s0)
/* 135EC 800381EC 804200AC */  lb        $v0, 0xac($v0)
/* 135F0 800381F0 14400094 */  bnez      $v0, .L80038444
/* 135F4 800381F4 00000000 */   nop
.L800381F8:
/* 135F8 800381F8 8E020000 */  lw        $v0, ($s0)
/* 135FC 800381FC A0400072 */  sb        $zero, 0x72($v0)
/* 13600 80038200 8E020000 */  lw        $v0, ($s0)
/* 13604 80038204 A0400071 */  sb        $zero, 0x71($v0)
/* 13608 80038208 8E020000 */  lw        $v0, ($s0)
/* 1360C 8003820C 0C015881 */  jal       func_80056204
/* 13610 80038210 A040007E */   sb       $zero, 0x7e($v0)
/* 13614 80038214 8E020000 */  lw        $v0, ($s0)
/* 13618 80038218 A0400070 */  sb        $zero, 0x70($v0)
/* 1361C 8003821C 8E020000 */  lw        $v0, ($s0)
/* 13620 80038220 A0400076 */  sb        $zero, 0x76($v0)
/* 13624 80038224 8E020000 */  lw        $v0, ($s0)
/* 13628 80038228 A0400078 */  sb        $zero, 0x78($v0)
/* 1362C 8003822C 8E020000 */  lw        $v0, ($s0)
/* 13630 80038230 3C04800A */  lui       $a0, %hi(gOverrideFlags)
/* 13634 80038234 2484A650 */  addiu     $a0, $a0, %lo(gOverrideFlags)
/* 13638 80038238 A040007D */  sb        $zero, 0x7d($v0)
/* 1363C 8003823C 8C820000 */  lw        $v0, ($a0)
/* 13640 80038240 2403FFF7 */  addiu     $v1, $zero, -9
/* 13644 80038244 00431024 */  and       $v0, $v0, $v1
/* 13648 80038248 0C00AB00 */  jal       general_heap_create
/* 1364C 8003824C AC820000 */   sw       $v0, ($a0)
/* 13650 80038250 0C047624 */  jal       clear_render_tasks
/* 13654 80038254 00000000 */   nop
/* 13658 80038258 0C048C2E */  jal       clear_generic_entity_list
/* 1365C 8003825C 00000000 */   nop
/* 13660 80038260 0C0B0C77 */  jal       clear_script_list
/* 13664 80038264 00000000 */   nop
/* 13668 80038268 0C00B7BD */  jal       create_cameras_a
/* 1366C 8003826C 00000000 */   nop
/* 13670 80038270 0C0B763E */  jal       spr_init_sprites
/* 13674 80038274 0000202D */   daddu    $a0, $zero, $zero
/* 13678 80038278 0C0482EC */  jal       clear_entity_models
/* 1367C 8003827C 00000000 */   nop
/* 13680 80038280 0C047889 */  jal       clear_animator_list
/* 13684 80038284 00000000 */   nop
/* 13688 80038288 0C045751 */  jal       clear_model_data
/* 1368C 8003828C 00000000 */   nop
/* 13690 80038290 0C052010 */  jal       clear_sprite_shading_data
/* 13694 80038294 00000000 */   nop
/* 13698 80038298 0C05177E */  jal       reset_background_settings
/* 1369C 8003829C 00000000 */   nop
/* 136A0 800382A0 0C050440 */  jal       clear_hud_element_cache
/* 136A4 800382A4 00000000 */   nop
/* 136A8 800382A8 0C0515A0 */  jal       clear_trigger_data
/* 136AC 800382AC 00000000 */   nop
/* 136B0 800382B0 0C048D9D */  jal       clear_printers
/* 136B4 800382B4 00000000 */   nop
/* 136B8 800382B8 0C04432E */  jal       clear_entity_data
/* 136BC 800382BC 0000202D */   daddu    $a0, $zero, $zero
/* 136C0 800382C0 0C04E042 */  jal       clear_screen_overlays
/* 136C4 800382C4 00000000 */   nop
/* 136C8 800382C8 0C037F14 */  jal       clear_player_status
/* 136CC 800382CC 00000000 */   nop
/* 136D0 800382D0 0C00E12F */  jal       clear_npcs
/* 136D4 800382D4 00000000 */   nop
/* 136D8 800382D8 0C039CE8 */  jal       clear_player_data
/* 136DC 800382DC 00000000 */   nop
/* 136E0 800382E0 0C01CACC */  jal       reset_battle_status
/* 136E4 800382E4 00000000 */   nop
/* 136E8 800382E8 0C00F8CE */  jal       init_encounter_status
/* 136EC 800382EC 00000000 */   nop
/* 136F0 800382F0 0C016727 */  jal       clear_effect_data
/* 136F4 800382F4 00000000 */   nop
/* 136F8 800382F8 0C04C3FC */  jal       clear_item_entity_data
/* 136FC 800382FC 00000000 */   nop
/* 13700 80038300 0C0514C8 */  jal       clear_saved_variables
/* 13704 80038304 00000000 */   nop
/* 13708 80038308 0C016BE5 */  jal       initialize_collision
/* 1370C 8003830C 00000000 */   nop
/* 13710 80038310 0C00CD3C */  jal       set_game_mode
/* 13714 80038314 24040002 */   addiu    $a0, $zero, 2
/* 13718 80038318 0800E111 */  j         .L80038444
/* 1371C 8003831C 00000000 */   nop
glabel L80038320_13720
/* 13720 80038320 27A50018 */  addiu     $a1, $sp, 0x18
/* 13724 80038324 8E240008 */  lw        $a0, 8($s1)
/* 13728 80038328 0C016AFE */  jal       get_map_IDs_by_name
/* 1372C 8003832C 27A6001A */   addiu    $a2, $sp, 0x1a
/* 13730 80038330 0000202D */  daddu     $a0, $zero, $zero
/* 13734 80038334 2405001D */  addiu     $a1, $zero, 0x1d
/* 13738 80038338 3C108007 */  lui       $s0, %hi(gGameStatusPtr)
/* 1373C 8003833C 2610419C */  addiu     $s0, $s0, %lo(gGameStatusPtr)
/* 13740 80038340 8E020000 */  lw        $v0, ($s0)
/* 13744 80038344 97A30018 */  lhu       $v1, 0x18($sp)
/* 13748 80038348 97A7001A */  lhu       $a3, 0x1a($sp)
/* 1374C 8003834C 24060014 */  addiu     $a2, $zero, 0x14
/* 13750 80038350 A4430086 */  sh        $v1, 0x86($v0)
/* 13754 80038354 A447008C */  sh        $a3, 0x8c($v0)
/* 13758 80038358 96230002 */  lhu       $v1, 2($s1)
/* 1375C 8003835C 2407FEFA */  addiu     $a3, $zero, -0x106
/* 13760 80038360 A040007E */  sb        $zero, 0x7e($v0)
/* 13764 80038364 0800E0EE */  j         .L800383B8
/* 13768 80038368 A443008E */   sh       $v1, 0x8e($v0)
glabel L8003836C_1376C
/* 1376C 8003836C 27A50018 */  addiu     $a1, $sp, 0x18
/* 13770 80038370 8E240008 */  lw        $a0, 8($s1)
/* 13774 80038374 0C016AFE */  jal       get_map_IDs_by_name
/* 13778 80038378 27A6001A */   addiu    $a2, $sp, 0x1a
/* 1377C 8003837C 0000202D */  daddu     $a0, $zero, $zero
/* 13780 80038380 2405001D */  addiu     $a1, $zero, 0x1d
/* 13784 80038384 24060014 */  addiu     $a2, $zero, 0x14
/* 13788 80038388 3C108007 */  lui       $s0, %hi(gGameStatusPtr)
/* 1378C 8003838C 2610419C */  addiu     $s0, $s0, %lo(gGameStatusPtr)
/* 13790 80038390 8E030000 */  lw        $v1, ($s0)
/* 13794 80038394 97A20018 */  lhu       $v0, 0x18($sp)
/* 13798 80038398 97A8001A */  lhu       $t0, 0x1a($sp)
/* 1379C 8003839C 2407FEFA */  addiu     $a3, $zero, -0x106
/* 137A0 800383A0 A4620086 */  sh        $v0, 0x86($v1)
/* 137A4 800383A4 A468008C */  sh        $t0, 0x8c($v1)
/* 137A8 800383A8 96280002 */  lhu       $t0, 2($s1)
/* 137AC 800383AC 24020001 */  addiu     $v0, $zero, 1
/* 137B0 800383B0 A062007E */  sb        $v0, 0x7e($v1)
/* 137B4 800383B4 A468008E */  sh        $t0, 0x8e($v1)
.L800383B8:
/* 137B8 800383B8 92230005 */  lbu       $v1, 5($s1)
/* 137BC 800383BC 240200B1 */  addiu     $v0, $zero, 0xb1
/* 137C0 800383C0 AFA20010 */  sw        $v0, 0x10($sp)
/* 137C4 800383C4 0C00B8C5 */  jal       set_cam_viewport
/* 137C8 800383C8 A2430012 */   sb       $v1, 0x12($s2)
/* 137CC 800383CC 0000202D */  daddu     $a0, $zero, $zero
/* 137D0 800383D0 3C05F5DE */  lui       $a1, 0xf5de
/* 137D4 800383D4 82260006 */  lb        $a2, 6($s1)
/* 137D8 800383D8 0C0B2026 */  jal       set_variable
/* 137DC 800383DC 34A50180 */   ori      $a1, $a1, 0x180
/* 137E0 800383E0 8E020000 */  lw        $v0, ($s0)
/* 137E4 800383E4 80420072 */  lb        $v0, 0x72($v0)
/* 137E8 800383E8 14400002 */  bnez      $v0, .L800383F4
/* 137EC 800383EC 24040002 */   addiu    $a0, $zero, 2
/* 137F0 800383F0 24040003 */  addiu     $a0, $zero, 3
.L800383F4:
/* 137F4 800383F4 0C04E0A8 */  jal       set_map_transition_effect
/* 137F8 800383F8 00000000 */   nop
/* 137FC 800383FC 0C00CD3C */  jal       set_game_mode
/* 13800 80038400 24040003 */   addiu    $a0, $zero, 3
/* 13804 80038404 0800E105 */  j         .L80038414
/* 13808 80038408 00000000 */   nop
glabel L8003840C_1380C
/* 1380C 8003840C 0C01CB85 */  jal       load_demo_battle
/* 13810 80038410 96240002 */   lhu      $a0, 2($s1)
.L80038414:
/* 13814 80038414 3C048007 */  lui       $a0, %hi(gGameStatusPtr)
/* 13818 80038418 2484419C */  addiu     $a0, $a0, %lo(gGameStatusPtr)
/* 1381C 8003841C 8C830000 */  lw        $v1, ($a0)
/* 13820 80038420 90620072 */  lbu       $v0, 0x72($v1)
/* 13824 80038424 24420001 */  addiu     $v0, $v0, 1
/* 13828 80038428 A0620072 */  sb        $v0, 0x72($v1)
/* 1382C 8003842C 8C840000 */  lw        $a0, ($a0)
/* 13830 80038430 80820072 */  lb        $v0, 0x72($a0)
/* 13834 80038434 28420013 */  slti      $v0, $v0, 0x13
/* 13838 80038438 14400002 */  bnez      $v0, .L80038444
/* 1383C 8003843C 24020012 */   addiu    $v0, $zero, 0x12
/* 13840 80038440 A0820072 */  sb        $v0, 0x72($a0)
.L80038444:
/* 13844 80038444 8FBF002C */  lw        $ra, 0x2c($sp)
/* 13848 80038448 8FB20028 */  lw        $s2, 0x28($sp)
/* 1384C 8003844C 8FB10024 */  lw        $s1, 0x24($sp)
/* 13850 80038450 8FB00020 */  lw        $s0, 0x20($sp)
/* 13854 80038454 03E00008 */  jr        $ra
/* 13858 80038458 27BD0030 */   addiu    $sp, $sp, 0x30
