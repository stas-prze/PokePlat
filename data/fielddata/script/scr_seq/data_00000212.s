.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	script Script_9
	script Script_10
	script Script_11
	script Script_12
	script Script_13
	.hword 0xfd13
@ 36

Script_1: @ 36
	LockAll
	SetVar 0x800c, 0x7
	Call Function_52
	ClearFlag 0x966
	SetVar 0x40d5, 0x0
	ReleaseAll
	End
@ 52

Function_52: @ 52
	ApplyMovement 0xff, Movement_120
	WaitMovement
	PrepareDoorAnimation 0x0, 0x0, 0x800c, 0x5, 0x4d
	Call Function_10d
	ApplyMovement 0xff, Movement_128
	WaitMovement
	Call Function_115
	Return
@ 7f

Function_7f: @ 7f
	ApplyMovement 0xff, Movement_13c
	WaitMovement
	Return
@ 8b

Function_8b: @ 8b
	ApplyMovement 0xff, Movement_130
	WaitMovement
	If 0x8007, 0x3
	CompareLastResultCall EQUAL, Script_branch_c8
	If 0x8007, 0x5
	CompareLastResultCall EQUAL, Script_branch_df
	If 0x8007, 0x7
	CompareLastResultCall EQUAL, Script_branch_f6
	SetVar 0x8004, 0x0
	YesNoBox 0x800c
	Return
@ c8

Script_branch_c8: @ c8
	If 0x8004, 0x1
	CompareLastResultJump GREATER, Script_branch_da
	Message 0xb8
	Return
@ da

Script_branch_da: @ da
	Message 0xb9
	Return
@ df

Script_branch_df: @ df
	If 0x8004, 0x1
	CompareLastResultJump GREATER, Script_branch_f1
	Message 0xc2
	Return
@ f1

Script_branch_f1: @ f1
	Message 0xc3
	Return
@ f6

Script_branch_f6: @ f6
	If 0x8004, 0x1
	CompareLastResultJump GREATER, Script_branch_108
	Message 0xcc
	Return
@ 108

Script_branch_108: @ 108
	Message 0xcd
	Return
@ 10d

Function_10d: @ 10d
	OpenDoor 0x4d
	WaitAction 0x4d
	Return
@ 115

Function_115: @ 115
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	Return
@ 120

Movement_120: @ 120
	WalkDownFast 0x1
	EndMovement 0x0
@ 128

Movement_128: @ 128
	WalkDownFast 0x2
	EndMovement 0x0
@ 130

Movement_130: @ 130
	WalkLeftFast 0x1
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 13c

Movement_13c: @ 13c
	WalkLeftFast 0x2
	MoveUpVeryFast 0x1
	EndMovement 0x0
@ 148

Script_2: @ 148
	End
@ 14a

Script_3: @ 14a
	If 0x40cc, 0x0
	CompareLastResultCall EQUAL, Script_branch_168
	If 0x40cc, 0x0
	CompareLastResultJump EQUAL, Script_branch_166
	ActContestMap
Script_branch_166: @ 166
	End
@ 168

Function_168: @ 168
Script_branch_168: @ 168
	SetVar 0x40cc, 0x0
	SetFlag 0x201
	SetFlag 0x202
	SetFlag 0x203
	SetFlag 0x204
	SetFlag 0x205
	Return
@ 184

Script_4: @ 184
	Cmd_266
	Call Function_1b1
	Call Script_branch_168
	CheckStatusPhraseBox 0x7, 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_1ab
	ClearFlag 0x213
	End
@ 1ab

Script_branch_1ab: @ 1ab
	SetFlag 0x213
	End
@ 1b1

Function_1b1: @ 1b1
	CheckFlag 0x159
	CompareLastResultJump EQUAL, Script_branch_1be
	Return
@ 1be

Script_branch_1be: @ 1be
	ChangeOwPosition 0x9, 0x18, 0x6
	ChangeOwMovement 0x9, 0xf
	ReleaseOw 0x9, 0x1
	Return
@ 1d4

Script_5: @ 1d4
	If 0x40cc, 0x1
	CompareLastResultCall EQUAL, Script_branch_1e3
	End
@ 1e3

Script_branch_1e3: @ 1e3
	RemovePeople2 0xff
	Return
@ 1e9

Script_6: @ 1e9
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1fc

Script_7: @ 1fc
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4003, 0x0
	SetVar 0x8007, 0x2
	Message 0x3
	Jump Script_branch_23a
	End
@ 21b

Script_8: @ 21b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4003, 0x1
	SetVar 0x8007, 0x2
	Message 0x7
	Jump Script_branch_23a
	End
@ 23a

Script_branch_23a: @ 23a
	If 0x4003, 0x1
	CompareLastResultJump EQUAL, Script_branch_250
	Message 0x4
	Jump Script_branch_253
Script_branch_250: @ 250
	Message 0xc
Script_branch_253: @ 253
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x8, 0x0
	Cmd_42 0x9, 0x1
	Cmd_42 0xa, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_2a8
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_2f0
	Jump Script_branch_291
	End
@ 291

Script_branch_291: @ 291
	DeleteEntry
	SetVar 0x40d5, 0x0
	ClearFlag 0x966
	Message 0xb
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 2a8

Script_branch_2a8: @ 2a8
	If 0x4003, 0x1
	CompareLastResultJump EQUAL, Script_branch_2bd
	Jump Script_branch_40d
	End
@ 2bd

Script_branch_2bd: @ 2bd
	HealPokemon
	ClearFlag 0x966
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_2e2
	Jump Script_branch_291
	End
@ 2e2

Script_branch_2e2: @ 2e2
	SetVar 0x8004, 0x2
	Jump Script_branch_4a8
	End
@ 2f0

Script_branch_2f0: @ 2f0
	If 0x4003, 0x1
	CompareLastResultJump EQUAL, Script_branch_305
	Jump Script_branch_30e
	End
@ 305

Script_branch_305: @ 305
	Message 0xd
	Jump Script_branch_23a
Script_branch_30e: @ 30e
	Message 0x5
Script_branch_311: @ 311
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x60, 0x0
	Cmd_42 0x61, 0x1
	Cmd_42 0x62, 0x2
	Cmd_42 0x63, 0x3
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_360
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_368
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_373
	Jump Script_branch_23a
	End
@ 360

Script_branch_360: @ 360
	Jump Script_branch_381
	End
@ 368

Script_branch_368: @ 368
	Message 0x12
	Jump Script_branch_30e
	End
@ 373

Script_branch_373: @ 373
	Message 0x13
	Jump Script_branch_30e
	End
@ 37e

Script_branch_37e: @ 37e
	Message 0x75
Script_branch_381: @ 381
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x24, 0x0
	Cmd_42 0x25, 0x1
	Cmd_42 0x26, 0x2
	Cmd_42 0x27, 0x3
	Cmd_42 0x28, 0x4
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_3e1
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_3ec
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_3f7
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_402
	Jump Script_branch_311
	End
@ 3e1

Script_branch_3e1: @ 3e1
	Message 0xe
	Jump Script_branch_37e
	End
@ 3ec

Script_branch_3ec: @ 3ec
	Message 0xf
	Jump Script_branch_37e
	End
@ 3f7

Script_branch_3f7: @ 3f7
	Message 0x10
	Jump Script_branch_37e
	End
@ 402

Script_branch_402: @ 402
	Message 0x11
	Jump Script_branch_37e
	End
@ 40d

Script_branch_40d: @ 40d
	Message 0x1b
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x69, 0x0
	Cmd_42 0x6a, 0x1
	Cmd_42 0x6b, 0x2
	Cmd_42 0x6c, 0x3
	Cmd_42 0x6d, 0x4
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_470
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_47e
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_48c
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_49a
	Jump Script_branch_291
	End
@ 470

Script_branch_470: @ 470
	SetVar 0x8004, 0x0
	Jump Script_branch_4a8
	End
@ 47e

Script_branch_47e: @ 47e
	SetVar 0x8004, 0x1
	Jump Script_branch_4a8
	End
@ 48c

Script_branch_48c: @ 48c
	SetVar 0x8004, 0x2
	Jump Script_branch_4a8
	End
@ 49a

Script_branch_49a: @ 49a
	SetVar 0x8004, 0x3
	Jump Script_branch_4a8
	End
@ 4a8

Script_branch_4a8: @ 4a8
	Message 0x1c
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x6e, 0x0
	Cmd_42 0x6f, 0x1
	Cmd_42 0x70, 0x2
	Cmd_42 0x71, 0x3
	Cmd_42 0x72, 0x4
	Cmd_42 0x73, 0x5
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_51c
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_52a
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_538
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_546
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_554
	Jump Script_branch_291
	End
@ 51c

Script_branch_51c: @ 51c
	SetVar 0x8005, 0x0
	Jump Script_branch_562
	End
@ 52a

Script_branch_52a: @ 52a
	SetVar 0x8005, 0x1
	Jump Script_branch_562
	End
@ 538

Script_branch_538: @ 538
	SetVar 0x8005, 0x2
	Jump Script_branch_562
	End
@ 546

Script_branch_546: @ 546
	SetVar 0x8005, 0x3
	Jump Script_branch_562
	End
@ 554

Script_branch_554: @ 554
	SetVar 0x8005, 0x4
	Jump Script_branch_562
	End
@ 562

Script_branch_562: @ 562
	Message 0x14
	Message 0x15
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	If 0x4003, 0x0
	CompareLastResultCall EQUAL, Script_branch_600
	If 0x4003, 0x1
	CompareLastResultCall EQUAL, Script_branch_608
	SetVar 0x800c, 0x0
Script_branch_596: @ 596
	ChsPokeContest 0x800c, 0x8004, 0x8005, 0x4004
	StorePokeContest 0x4002, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5c1
	ShowPokeInfo 0x4002
	StorePokeMove 0x800c
	Jump Script_branch_596
Script_branch_5c1: @ 5c1
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x4002, 0xff
	CompareLastResultJump EQUAL, Script_branch_5e4
	Jump Script_branch_610
	End
@ 5e4

Script_branch_5e4: @ 5e4
	Message 0xd7
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_291
	Jump Script_branch_562
	End
@ 600

Script_branch_600: @ 600
	SetVar 0x4004, 0x0
	Return
@ 608

Script_branch_608: @ 608
	SetVar 0x4004, 0x1
	Return
@ 610

Script_branch_610: @ 610
	If 0x4003, 0x1
	CompareLastResultJump EQUAL, Script_branch_625
	Jump Script_branch_70d
	End
@ 625

Script_branch_625: @ 625
	Message 0xdb
	Multi 0x1e, 0x1, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xd, 0x0
	Cmd_42 0xe, 0x1
	Cmd_42 0x5, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_669
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_6bb
	Jump Script_branch_291
	End
@ 669

Script_branch_669: @ 669
	Message 0xd4
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_625
	CloseMsgOnKeyPress
	ChsFriend 0x8, 0x8005, 0x8004, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6ab
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_6b3
	Jump Script_branch_70d
	End
@ 6ab

Script_branch_6ab: @ 6ab
	Jump Script_branch_625
	End
@ 6b3

Script_branch_6b3: @ 6b3
	Jump Script_branch_625
	End
@ 6bb

Script_branch_6bb: @ 6bb
	Message 0xd4
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_625
	CloseMsgOnKeyPress
	WireBattleWait 0x8, 0x8005, 0x8004, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_6fd
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_705
	Jump Script_branch_70d
	End
@ 6fd

Script_branch_6fd: @ 6fd
	Jump Script_branch_625
	End
@ 705

Script_branch_705: @ 705
	DeleteEntry
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 70d

Script_branch_70d: @ 70d
	Cmd_fa 0x8004, 0x8005, 0x8007, 0x4002
	If 0x4003, 0x1
	CompareLastResultCall EQUAL, Script_branch_7b5
	If 0x4003, 0x2
	CompareLastResultJump EQUAL, Script_branch_78a
	Cmd_109 0x800c
	ScriptCmd_AddValue 0x800c, 0x1
	SetvatHiroEntry 0x800c, 0x0
	Message5 0x16
	Cmd_109 0x800c
	SetvarOtherEntry 0x800c, 0x0
	Cmd_fe 0x800c, 0x1
	Message5 0x40
	StartOvation 0x19
	StopOvation 0x19
	CloseMsgOnKeyPress
Script_branch_761: @ 761
	If 0x4003, 0x0
	CompareLastResultJump EQUAL, Script_branch_7bc
	If 0x4003, 0x1
	CompareLastResultJump EQUAL, Script_branch_7f1
	If 0x4003, 0x2
	CompareLastResultJump EQUAL, Script_branch_830
	End
@ 78a

Script_branch_78a: @ 78a
	Cmd_109 0x800c
	ScriptCmd_AddValue 0x800c, 0x1
	SetvatHiroEntry 0x800c, 0x0
	Message 0xb1
	Cmd_109 0x800c
	SetvarOtherEntry 0x800c, 0x0
	Cmd_fe 0x800c, 0x1
	CloseMsgOnKeyPress
	Jump Script_branch_761
Script_branch_7b5: @ 7b5
	Message 0xd2
	Cmd_100
	Return
@ 7bc

Script_branch_7bc: @ 7bc
	PrepareDoorAnimation 0x0, 0x0, 0x13, 0x5, 0x4d
	Call Function_10d
	WaitMovement
	ApplyMovement 0xff, Movement_da0
	ApplyMovement 0x0, Movement_e08
	WaitMovement
	Call Function_115
	WaitMovement
	Jump Script_branch_86a
	End
@ 7f1

Script_branch_7f1: @ 7f1
	SetFlag 0x966
	SetVar 0x40d5, 0x5
	PrepareDoorAnimation 0x0, 0x0, 0x7, 0x5, 0x4d
	Call Function_10d
	WaitMovement
	ApplyMovement 0xff, Movement_db0
	ApplyMovement 0x1, Movement_e18
	WaitMovement
	Call Function_115
	WaitMovement
	Jump Script_branch_86a
	End
@ 830

Script_branch_830: @ 830
	PrepareDoorAnimation 0x0, 0x0, 0x1c, 0x5, 0x4d
	Call Function_10d
	WaitMovement
	ApplyMovement 0xff, Movement_dc0
	ApplyMovement 0x2, Movement_e28
	WaitMovement
	Call Function_115
	WaitMovement
	Message5 0xd3
	CloseMsgOnKeyPress
	Jump Script_branch_86a
	End
@ 86a

Script_branch_86a: @ 86a
	If 0x4003, 0x2
	CompareLastResultJump EQUAL, Script_branch_8cd
	Tuxedo
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_892
	Jump Script_branch_8a0
	End
@ 892

Script_branch_892: @ 892
	SetVarHero 0x0
	Message5 0x42
	Jump Script_branch_8ae
	End
@ 8a0

Script_branch_8a0: @ 8a0
	SetVarHero 0x0
	Message5 0x43
	Jump Script_branch_8ae
	End
@ 8ae

Script_branch_8ae: @ 8ae
	ApplyMovement 0xff, Movement_e00
	WaitMovement
	Message5 0x44
	StartOvation 0x1a
	StopOvation 0x1a
	CloseMsgOnKeyPress
	Jump Script_branch_947
	End
@ 8cd

Script_branch_8cd: @ 8cd
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	BlackFlashEffect
	Cmd_110 0x8004, 0x8005, 0x8007, 0x4002
	SetVar 0x40cc, 0x0
	Warp 0x75, 0x0, 0x1c, 0x3, 0x1
	LockAll
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Cmd_10c 0x4003
	Cmd_110 0x8004, 0x8005, 0x8007, 0x4002
	Cmd_107 0x8004
	Cmd_118
	Cmd_fb 0x4002
	SetVar 0x800c, 0x1c
	Call Function_52
	Call Function_8b
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_70d
	Message 0x74
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 947

Script_branch_947: @ 947
	ClearFlag 0x220
	SetVar 0x40cc, 0x1
	Call Function_d20
	PlayFanfare 0x603
	ClearFlag 0x201
	ClearFlag 0x202
	ClearFlag 0x203
	ClearFlag 0x204
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x76, 0x0, 0x1d, 0x7, 0x0
	Cmd_117
	Cmd_10c 0x4003
	CarpetAnm
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Cmd_114
	StartOvation 0x3
	StopOvation 0x3
	PlayFanfare 0x645
	ApplyMovement 0x0, Movement_e38
	WaitMovement
	SetvarTypeContest 0x0
	SetvarRankContest 0x1
	Message5 0x45
	StartOvation 0x13
	StopOvation 0x13
	ApplyMovement 0x0, Movement_e54
	WaitMovement
	SetvarOtherEntry 0x0, 0x0
	Message5 0x46
	ActPeopleContest 0x0, 0x800c
	FlashContest 0x0
	Call Function_c47
	EndFlash
	StartOvation 0x14
	StopOvation 0x14
	ApplyMovement 0x0, Movement_e5c
	WaitMovement
	SetvarOtherEntry 0x1, 0x0
	Message5 0x47
	ActPeopleContest 0x1, 0x800c
	FlashContest 0x1
	Call Function_c47
	EndFlash
	StartOvation 0x15
	StopOvation 0x15
	Return2 0x8, 0x800c
	SetvarOtherEntry 0x2, 0x0
	Message5 0x48
	ActPeopleContest 0x2, 0x800c
	FlashContest 0x2
	Call Function_c47
	EndFlash
	StartOvation 0x16
	StopOvation 0x16
	ApplyMovement 0x0, Movement_e64
	WaitMovement
	SetvarOtherEntry 0x3, 0x0
	Message5 0x49
	ActPeopleContest 0x3, 0x800c
	FlashContest 0x3
	Call Function_c47
	EndFlash
	StartOvation 0x17
	StopOvation 0x17
	ApplyMovement 0x0, Movement_e6c
	WaitMovement
	Message5 0x4a
	CloseMsgOnKeyPress
	StartOvation 0x4
	StopOvation 0x4
	PlayFanfare 0x645
	Return2 0x1e, 0x800c
	CarpetAnm
	FadeScreen 0x6, 0x1, 0x14, 0x0
	ResetScreen
	Cmd_114
	Cmd_2b1
	BlackFlashEffect
	Cmd_117
	Cmd_110 0x8004, 0x8005, 0x8007, 0x4002
	Cmd_10c 0x4003
	Call Function_d3a
	Cmd_2b0
	FadeScreen 0x6, 0x1, 0x1, 0x7fff
	ResetScreen
	StorePeopleIdContest 0x800c
	FlashContest 0x800c
	ActPeopleContest 0x800c, 0x800c
	Call Function_c47
	EndFlash
	Message5 0x4c
	Cmd_115 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_b50
	Cmd_104 0x0
	Cmd_106 0x1
	Cmd_10e 0x2
	Cmd_10d 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_b1b
	Message5 0x4f
	Jump Script_branch_b50
Script_branch_b1b: @ b1b
	Message5 0x4d
	CloseMsgOnKeyPress
	ApplyMovement 0x0, Movement_e64
	ApplyMovement 0x5, Movement_e54
	WaitMovement
	Return2 0xf, 0x800c
	Soundfr 0x483
	Cmd_4f
	ApplyMovement 0x0, Movement_e6c
	ApplyMovement 0x5, Movement_e6c
	WaitMovement
Script_branch_b50: @ b50
	Message5 0x4e
	CloseMsgOnKeyPress
	PlayFanfare 0x645
	StorePeopleIdContest 0x800c
	FlashContest 0x800c
	ActPeopleContest 0x800c, 0x800c
	Call Function_c47
	EndFlash
	Return2 0x1e, 0x800c
	StartOvation 0x18
	StopOvation 0x18
	Cmd_2bb
	Return2 0xa, 0x800c
	Cmd_2b1
	CarpetAnm
	FadeScreen 0x6, 0x1, 0x14, 0x0
	ResetScreen
	Cmd_114
	Cmd_110 0x8004, 0x8005, 0x8007, 0x4002
	Cmd_10f 0x8004
	Cmd_118
	Cmd_fb 0x4002
	SetVar 0x40cc, 0x0
	If 0x4003, 0x0
	CompareLastResultJump EQUAL, Script_branch_bf2
	Warp 0x75, 0x0, 0x7, 0x3, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x800c, 0x7
	Call Function_52
	ClearFlag 0x966
	SetVar 0x40d5, 0x0
	Jump Script_branch_c45
Script_branch_bf2: @ bf2
	Warp 0x75, 0x0, 0x12, 0x3, 0x1
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	SetVar 0x800c, 0x13
	Call Function_52
	Call Function_7f
	If 0x8004, 0xffff
	CompareLastResultJump EQUAL, Script_branch_c3e
	SetVarHero 0x0
	CheckAccessories3 0x1, 0x8004
	Message 0x50
	SetVar 0x8005, 0x1
	CallStandard 0x7ff
Script_branch_c3e: @ c3e
	Message 0x52
	WaitButton
	CloseMsgOnKeyPress
Script_branch_c45: @ c45
	End
@ c47

Function_c47: @ c47
	PlayFanfare 0x645
	If 0x800c, 0x1
	CompareLastResultCall EQUAL, Script_branch_c8e
	If 0x800c, 0x2
	CompareLastResultCall EQUAL, Script_branch_c98
	If 0x800c, 0x3
	CompareLastResultCall EQUAL, Script_branch_cac
	If 0x800c, 0x4
	CompareLastResultCall EQUAL, Script_branch_cc8
	If 0x800c, 0x5
	CompareLastResultCall 0x4, Script_branch_cee
	Return
@ c8e

Script_branch_c8e: @ c8e
	PlayFanfare 0x646
	WaitFanfare 0x646
	Return
@ c98

Script_branch_c98: @ c98
	PlayFanfare 0x646
	Return2 0x5, 0x800c
	PlayFanfare 0x646
	WaitFanfare 0x646
	Return
@ cac

Script_branch_cac: @ cac
	PlayFanfare 0x646
	WaitFanfare 0x646
	PlayFanfare 0x646
	Return2 0x5, 0x800c
	PlayFanfare 0x646
	WaitFanfare 0x646
	Return
@ cc8

Script_branch_cc8: @ cc8
	PlayFanfare 0x646
	Return2 0x5, 0x800c
	PlayFanfare 0x646
	WaitFanfare 0x646
	PlayFanfare 0x646
	Return2 0x5, 0x800c
	PlayFanfare 0x646
	WaitFanfare 0x646
	Return
@ cee

Script_branch_cee: @ cee
	PlayFanfare 0x646
	Return2 0x5, 0x800c
	PlayFanfare 0x646
	Return2 0x5, 0x800c
	PlayFanfare 0x646
	Return2 0xa, 0x800c
	PlayFanfare 0x646
	Return2 0x5, 0x800c
	PlayFanfare 0x646
	WaitFanfare 0x646
	Return
@ d20

Function_d20: @ d20
	SetvatHiroEntry2 0x0, 0x4020
	SetvatHiroEntry2 0x1, 0x4021
	SetvatHiroEntry2 0x2, 0x4022
	SetvatHiroEntry2 0x3, 0x4023
	Return
@ d3a

Function_d3a: @ d3a
	StorePeopleIdContest 0x800c
	SetvatHiroEntry2 0x800c, 0x4024
	ClearFlag 0x205
	AddPeople 0x5
	StorePeopleIdContest 0x4000
	If 0x4000, 0x0
	CompareLastResultJump EQUAL, Script_branch_d86
	If 0x4000, 0x1
	CompareLastResultJump EQUAL, Script_branch_d8c
	If 0x4000, 0x2
	CompareLastResultJump EQUAL, Script_branch_d92
	If 0x4000, 0x3
	CompareLastResultJump EQUAL, Script_branch_d98
	Return
@ d86

Script_branch_d86: @ d86
	RemovePeople 0x1
	Return
@ d8c

Script_branch_d8c: @ d8c
	RemovePeople 0x2
	Return
@ d92

Script_branch_d92: @ d92
	RemovePeople 0x3
	Return
@ d98

Script_branch_d98: @ d98
	RemovePeople 0x4
	Return
@ d9e

.byte 0x0 @ 0xd9e
.byte 0x0 @ 0xd9f

Movement_da0: @ da0
	WalkRightFast 0x2
	WalkUpFast 0x3
	MoveLeftFast 0x1
	EndMovement 0x0
@ db0

Movement_db0: @ db0
	WalkRightFast 0x2
	WalkUpFast 0x3
	MoveLeftFast 0x1
	EndMovement 0x0
@ dc0

Movement_dc0: @ dc0
	WalkRightFast 0x1
	WalkUpFast 0x3
	EndMovement 0x0
@ dcc

.byte 0x3e @ 0xdcc
.byte 0x0 @ 0xdcd
.byte 0x1 @ 0xdce
.byte 0x0 @ 0xdcf
.byte 0x3 @ 0xdd0
.byte 0x0 @ 0xdd1
.byte 0x1 @ 0xdd2
.byte 0x0 @ 0xdd3
.byte 0x3e @ 0xdd4
.byte 0x0 @ 0xdd5
.byte 0x1 @ 0xdd6
.byte 0x0 @ 0xdd7
.byte 0x1 @ 0xdd8
.byte 0x0 @ 0xdd9
.byte 0x1 @ 0xdda
.byte 0x0 @ 0xddb
.byte 0x3d @ 0xddc
.byte 0x0 @ 0xddd
.byte 0x1 @ 0xdde
.byte 0x0 @ 0xddf
.byte 0x2 @ 0xde0
.byte 0x0 @ 0xde1
.byte 0x1 @ 0xde2
.byte 0x0 @ 0xde3
.byte 0x3c @ 0xde4
.byte 0x0 @ 0xde5
.byte 0x1 @ 0xde6
.byte 0x0 @ 0xde7
.byte 0x0 @ 0xde8
.byte 0x0 @ 0xde9
.byte 0x1 @ 0xdea
.byte 0x0 @ 0xdeb
.byte 0x3c @ 0xdec
.byte 0x0 @ 0xded
.byte 0x1 @ 0xdee
.byte 0x0 @ 0xdef
.byte 0x3 @ 0xdf0
.byte 0x0 @ 0xdf1
.byte 0x1 @ 0xdf2
.byte 0x0 @ 0xdf3
.byte 0x3c @ 0xdf4
.byte 0x0 @ 0xdf5
.byte 0x1 @ 0xdf6
.byte 0x0 @ 0xdf7
.byte 0x1 @ 0xdf8
.byte 0x0 @ 0xdf9
.byte 0x1 @ 0xdfa
.byte 0x0 @ 0xdfb
.byte 0xfe @ 0xdfc
.byte 0x0 @ 0xdfd
.byte 0x0 @ 0xdfe
.byte 0x0 @ 0xdff

Movement_e00: @ e00
	MoveUpFast 0x1
	EndMovement 0x0
@ e08

Movement_e08: @ e08
	Move_3f 0x2
	WalkUpFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ e18

Movement_e18: @ e18
	Move_3f 0x2
	WalkUpFast 0x1
	WalkRightFast 0x1
	EndMovement 0x0
@ e28

Movement_e28: @ e28
	Move_3f 0x2
	WalkUpFast 0x1
	MoveRightFast 0x1
	EndMovement 0x0
@ e38

Movement_e38: @ e38
	Move_3f 0x2
	MoveLeftFast 0x1
	Move_3f 0x1
	MoveRightFast 0x1
	Move_3f 0x1
	MoveDownVeryFast 0x1
	EndMovement 0x0
@ e54

Movement_e54: @ e54
	MoveLeftFast 0x1
	EndMovement 0x0
@ e5c

Movement_e5c: @ e5c
	MoveUpFast 0x1
	EndMovement 0x0
@ e64

Movement_e64: @ e64
	MoveRightFast 0x1
	EndMovement 0x0
@ e6c

Movement_e6c: @ e6c
	MoveDownFast 0x1
	EndMovement 0x0
@ e74

Script_10: @ e74
Script_11: @ e74
Script_12: @ e74
Script_9: @ e74
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4003, 0x2
	SetVar 0x8004, 0x0
	Message 0x6f
	Jump Script_branch_e93
	End
@ e93

Script_branch_e93: @ e93
	Message 0x70
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x71, 0x0
	Cmd_42 0x72, 0x1
	Cmd_42 0x73, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_ee1
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1169
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_138e
	Jump Script_branch_138e
	End
@ ee1

Script_branch_ee1: @ ee1
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x9b, 0x0
	Cmd_42 0x9c, 0x1
	Cmd_42 0x9d, 0x2
	Cmd_42 0x9e, 0x3
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_f30
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_f44
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_f5e
	Jump Script_branch_f72
	End
@ f30

Script_branch_f30: @ f30
	SetVar 0x4004, 0x0
	SetVar 0x8007, 0x3
	Jump Script_branch_1027
	End
@ f44

Script_branch_f44: @ f44
	SetVar 0x4004, 0x1
	SetVar 0x8005, 0x0
	SetVar 0x8007, 0x5
	Jump Script_branch_1027
	End
@ f5e

Script_branch_f5e: @ f5e
	SetVar 0x4004, 0x0
	SetVar 0x8007, 0x7
	Jump Script_branch_1027
	End
@ f72

Script_branch_f72: @ f72
	Message 0x9f
	WaitButton
	Jump Script_branch_1393
	End
@ f7f

.byte 0x2c @ 0xf7f
.byte 0x0 @ 0xf80
.byte 0xa8 @ 0xf81
.byte 0x41 @ 0xf82
.byte 0x0 @ 0xf83
.byte 0x1 @ 0xf84
.byte 0x1 @ 0xf85
.byte 0x0 @ 0xf86
.byte 0x1 @ 0xf87
.byte 0xc @ 0xf88
.byte 0x80 @ 0xf89
.byte 0x42 @ 0xf8a
.byte 0x0 @ 0xf8b
.byte 0xa9 @ 0xf8c
.byte 0x0 @ 0xf8d
.byte 0x42 @ 0xf8e
.byte 0x0 @ 0xf8f
.byte 0xaa @ 0xf90
.byte 0x1 @ 0xf91
.byte 0x42 @ 0xf92
.byte 0x0 @ 0xf93
.byte 0xab @ 0xf94
.byte 0x2 @ 0xf95
.byte 0x42 @ 0xf96
.byte 0x0 @ 0xf97
.byte 0xac @ 0xf98
.byte 0x3 @ 0xf99
.byte 0x42 @ 0xf9a
.byte 0x0 @ 0xf9b
.byte 0xad @ 0xf9c
.byte 0x4 @ 0xf9d
.byte 0x43 @ 0xf9e
.byte 0x0 @ 0xf9f
.byte 0x29 @ 0xfa0
.byte 0x0 @ 0xfa1
.byte 0x8 @ 0xfa2
.byte 0x80 @ 0xfa3
.byte 0xc @ 0xfa4
.byte 0x80 @ 0xfa5
.byte 0x11 @ 0xfa6
.byte 0x0 @ 0xfa7
.byte 0x8 @ 0xfa8
.byte 0x80 @ 0xfa9
.byte 0x0 @ 0xfaa
.byte 0x0 @ 0xfab
.byte 0x1c @ 0xfac
.byte 0x0 @ 0xfad
.byte 0x1 @ 0xfae
.byte 0x2f @ 0xfaf
.byte 0x0 @ 0xfb0
.byte 0x0 @ 0xfb1
.byte 0x0 @ 0xfb2
.byte 0x11 @ 0xfb3
.byte 0x0 @ 0xfb4
.byte 0x8 @ 0xfb5
.byte 0x80 @ 0xfb6
.byte 0x1 @ 0xfb7
.byte 0x0 @ 0xfb8
.byte 0x1c @ 0xfb9
.byte 0x0 @ 0xfba
.byte 0x1 @ 0xfbb
.byte 0x30 @ 0xfbc
.byte 0x0 @ 0xfbd
.byte 0x0 @ 0xfbe
.byte 0x0 @ 0xfbf
.byte 0x11 @ 0xfc0
.byte 0x0 @ 0xfc1
.byte 0x8 @ 0xfc2
.byte 0x80 @ 0xfc3
.byte 0x2 @ 0xfc4
.byte 0x0 @ 0xfc5
.byte 0x1c @ 0xfc6
.byte 0x0 @ 0xfc7
.byte 0x1 @ 0xfc8
.byte 0x31 @ 0xfc9
.byte 0x0 @ 0xfca
.byte 0x0 @ 0xfcb
.byte 0x0 @ 0xfcc
.byte 0x11 @ 0xfcd
.byte 0x0 @ 0xfce
.byte 0x8 @ 0xfcf
.byte 0x80 @ 0xfd0
.byte 0x3 @ 0xfd1
.byte 0x0 @ 0xfd2
.byte 0x1c @ 0xfd3
.byte 0x0 @ 0xfd4
.byte 0x1 @ 0xfd5
.byte 0x32 @ 0xfd6
.byte 0x0 @ 0xfd7
.byte 0x0 @ 0xfd8
.byte 0x0 @ 0xfd9
.byte 0x16 @ 0xfda
.byte 0x0 @ 0xfdb
.byte 0x3a @ 0xfdc
.byte 0x0 @ 0xfdd
.byte 0x0 @ 0xfde
.byte 0x0 @ 0xfdf
.byte 0x2 @ 0xfe0
.byte 0x0 @ 0xfe1
.byte 0x28 @ 0xfe2
.byte 0x0 @ 0xfe3
.byte 0x4 @ 0xfe4
.byte 0x80 @ 0xfe5
.byte 0x0 @ 0xfe6
.byte 0x0 @ 0xfe7
.byte 0x16 @ 0xfe8
.byte 0x0 @ 0xfe9
.byte 0x39 @ 0xfea
.byte 0x0 @ 0xfeb
.byte 0x0 @ 0xfec
.byte 0x0 @ 0xfed
.byte 0x2 @ 0xfee
.byte 0x0 @ 0xfef
.byte 0x28 @ 0xff0
.byte 0x0 @ 0xff1
.byte 0x4 @ 0xff2
.byte 0x80 @ 0xff3
.byte 0x1 @ 0xff4
.byte 0x0 @ 0xff5
.byte 0x16 @ 0xff6
.byte 0x0 @ 0xff7
.byte 0x2b @ 0xff8
.byte 0x0 @ 0xff9
.byte 0x0 @ 0xffa
.byte 0x0 @ 0xffb
.byte 0x2 @ 0xffc
.byte 0x0 @ 0xffd
.byte 0x28 @ 0xffe
.byte 0x0 @ 0xfff
.byte 0x4 @ 0x1000
.byte 0x80 @ 0x1001
.byte 0x2 @ 0x1002
.byte 0x0 @ 0x1003
.byte 0x16 @ 0x1004
.byte 0x0 @ 0x1005
.byte 0x1d @ 0x1006
.byte 0x0 @ 0x1007
.byte 0x0 @ 0x1008
.byte 0x0 @ 0x1009
.byte 0x2 @ 0x100a
.byte 0x0 @ 0x100b
.byte 0x28 @ 0x100c
.byte 0x0 @ 0x100d
.byte 0x4 @ 0x100e
.byte 0x80 @ 0x100f
.byte 0x3 @ 0x1010
.byte 0x0 @ 0x1011
.byte 0x16 @ 0x1012
.byte 0x0 @ 0x1013
.byte 0xf @ 0x1014
.byte 0x0 @ 0x1015
.byte 0x0 @ 0x1016
.byte 0x0 @ 0x1017
.byte 0x2 @ 0x1018
.byte 0x0 @ 0x1019
.byte 0x2c @ 0x101a
.byte 0x0 @ 0x101b
.byte 0xae @ 0x101c
.byte 0x31 @ 0x101d
.byte 0x0 @ 0x101e
.byte 0x16 @ 0x101f
.byte 0x0 @ 0x1020
.byte 0x6e @ 0x1021
.byte 0x3 @ 0x1022
.byte 0x0 @ 0x1023
.byte 0x0 @ 0x1024
.byte 0x2 @ 0x1025
.byte 0x0 @ 0x1026

Script_branch_1027: @ 1027
	If 0x4004, 0x1
	CompareLastResultJump EQUAL, Script_branch_1101
	Jump Script_branch_103a
Script_branch_103a: @ 103a
	Message 0xa0
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0xa1, 0x0
	Cmd_42 0xa2, 0x1
	Cmd_42 0xa3, 0x2
	Cmd_42 0xa4, 0x3
	Cmd_42 0xa5, 0x4
	Cmd_42 0xa6, 0x5
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_10ae
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_10bc
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_10ca
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_10d8
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_10e6
	Jump Script_branch_10f4
	End
@ 10ae

Script_branch_10ae: @ 10ae
	SetVar 0x8005, 0x0
	Jump Script_branch_1101
	End
@ 10bc

Script_branch_10bc: @ 10bc
	SetVar 0x8005, 0x1
	Jump Script_branch_1101
	End
@ 10ca

Script_branch_10ca: @ 10ca
	SetVar 0x8005, 0x2
	Jump Script_branch_1101
	End
@ 10d8

Script_branch_10d8: @ 10d8
	SetVar 0x8005, 0x3
	Jump Script_branch_1101
	End
@ 10e6

Script_branch_10e6: @ 10e6
	SetVar 0x8005, 0x4
	Jump Script_branch_1101
	End
@ 10f4

Script_branch_10f4: @ 10f4
	Message 0xa7
	WaitButton
	Jump Script_branch_1393
	End
@ 1101

Script_branch_1101: @ 1101
	Message 0xaf
	Message 0xb0
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	SetVar 0x800c, 0x0
Script_branch_111b: @ 111b
	ChsPokeContest 0x800c, 0x8004, 0x8005, 0x0
	StorePokeContest 0x4002, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1146
	ShowPokeInfo 0x4002
	StorePokeMove 0x800c
	Jump Script_branch_111b
Script_branch_1146: @ 1146
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x4002, 0xff
	CompareLastResultJump EQUAL, Script_branch_10f4
	Jump Script_branch_70d
	End
@ 1169

Script_branch_1169: @ 1169
	Message 0x75
Script_branch_116c: @ 116c
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x79, 0x0
	Cmd_42 0x76, 0x1
	Cmd_42 0x77, 0x2
	Cmd_42 0x78, 0x3
	Cmd_42 0x7a, 0x4
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1375
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_11cf
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_124a
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_12e1
	Jump Script_branch_e93
	End
@ 11cc

Script_branch_11cc: @ 11cc
	Message 0x75
Script_branch_11cf: @ 11cf
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x7d, 0x0
	Cmd_42 0x7e, 0x1
	Cmd_42 0x7f, 0x2
	Cmd_42 0x81, 0x3
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_121e
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1229
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1234
	Jump Script_branch_123f
	End
@ 121e

Script_branch_121e: @ 121e
	Message 0x82
	Jump Script_branch_11cc
	End
@ 1229

Script_branch_1229: @ 1229
	Message 0x83
	Jump Script_branch_11cc
	End
@ 1234

Script_branch_1234: @ 1234
	Message 0x84
	Jump Script_branch_11cc
	End
@ 123f

Script_branch_123f: @ 123f
	Jump Script_branch_116c
	End
@ 1247

Script_branch_1247: @ 1247
	Message 0x75
Script_branch_124a: @ 124a
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x87, 0x0
	Cmd_42 0x88, 0x1
	Cmd_42 0x89, 0x2
	Cmd_42 0x8a, 0x3
	Cmd_42 0x8b, 0x4
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_12aa
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_12b5
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_12c0
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_12cb
	Jump Script_branch_12d6
	End
@ 12aa

Script_branch_12aa: @ 12aa
	Message 0x8c
	Jump Script_branch_1247
	End
@ 12b5

Script_branch_12b5: @ 12b5
	Message 0x8d
	Jump Script_branch_1247
	End
@ 12c0

Script_branch_12c0: @ 12c0
	Message 0x8e
	Jump Script_branch_1247
	End
@ 12cb

Script_branch_12cb: @ 12cb
	Message 0x8f
	Jump Script_branch_1247
	End
@ 12d6

Script_branch_12d6: @ 12d6
	Jump Script_branch_116c
	End
@ 12de

Script_branch_12de: @ 12de
	Message 0x75
Script_branch_12e1: @ 12e1
	Multi2 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x91, 0x0
	Cmd_42 0x92, 0x1
	Cmd_42 0x93, 0x2
	Cmd_42 0x94, 0x3
	Cmd_42 0x95, 0x4
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1341
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_134c
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_1357
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_1362
	Jump Script_branch_136d
	End
@ 1341

Script_branch_1341: @ 1341
	Message 0x96
	Jump Script_branch_12de
	End
@ 134c

Script_branch_134c: @ 134c
	Message 0x97
	Jump Script_branch_12de
	End
@ 1357

Script_branch_1357: @ 1357
	Message 0x98
	Jump Script_branch_12de
	End
@ 1362

Script_branch_1362: @ 1362
	Message 0x99
	Jump Script_branch_12de
	End
@ 136d

Script_branch_136d: @ 136d
	Jump Script_branch_116c
	End
@ 1375

Script_branch_1375: @ 1375
	Message 0x7c
	Message 0x75
	Jump Script_branch_116c
	End
@ 1383

.byte 0x2c @ 0x1383
.byte 0x0 @ 0x1384
.byte 0x7b @ 0x1385
.byte 0x16 @ 0x1386
.byte 0x0 @ 0x1387
.byte 0x7 @ 0x1388
.byte 0x0 @ 0x1389
.byte 0x0 @ 0x138a
.byte 0x0 @ 0x138b
.byte 0x2 @ 0x138c
.byte 0x0 @ 0x138d

Script_branch_138e: @ 138e
	Message 0x74
	WaitButton
Script_branch_1393: @ 1393
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1399

Script_13: @ 1399
	PlayFanfare 0x5dc
	LockAll
	ShowLnkCntRecord
	ReleaseAll
	End
@ 13a5

.byte 0x0 @ 0x13a5
.byte 0x0 @ 0x13a6
.byte 0x0 @ 0x13a7

@ end_0x13a8
