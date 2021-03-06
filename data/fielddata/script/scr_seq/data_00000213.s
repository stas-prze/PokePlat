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
	script Script_14
	script Script_15
	script Script_16
	script Script_17
	.hword 0xfd13
@ 46

Script_1: @ 46
	If 0x40d5, 0x0
	CompareLastResultCall 0x5, Script_branch_55
	End
@ 55

Script_branch_55: @ 55
	RemovePeople2 0xff
	Return
@ 5b

Script_13: @ 5b
Script_15: @ 5b
Script_16: @ 5b
	SetVar 0x4000, 0xd
	SetVar 0x4001, 0x5
	SetVar 0x4002, 0x2
	Jump Script_branch_8f
@ 73

.byte 0x2 @ 0x73
.byte 0x0 @ 0x74

Script_14: @ 75
	SetVar 0x4000, 0x8
	SetVar 0x4001, 0x5
	SetVar 0x4002, 0x2
	Jump Script_branch_8f
@ 8d

.byte 0x2 @ 0x8d
.byte 0x0 @ 0x8e

Script_branch_8f: @ 8f
	LockAll
	PrepareDoorAnimation 0x0, 0x0, 0x4000, 0x4002, 0x4d
	Call Function_50b
	AddPeople2 0xff
	ApplyMovement 0xff, Movement_f0
	WaitMovement
	Call Function_513
	ApplyMovement 0xff, Movement_f8
	WaitMovement
	PrepareDoorAnimation 0x0, 0x0, 0x4000, 0x4001, 0x4d
	Call Function_50b
	ApplyMovement 0xff, Movement_100
	WaitMovement
	Call Function_513
	ClearFlag 0x966
	SetVar 0x40d5, 0x0
	ReleaseAll
	End
@ ef

.byte 0x0 @ 0xef

Movement_f0: @ f0
	WalkDownFast 0x1
	EndMovement 0x0
@ f8

Movement_f8: @ f8
	WalkDownFast 0x1
	EndMovement 0x0
@ 100

Movement_100: @ 100
	WalkDownFast 0x2
	EndMovement 0x0
@ 108

Script_2: @ 108
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StorePokeNumParty 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_755
	Message 0x0
	Jump Script_branch_12c
@ 12a

.byte 0x2 @ 0x12a
.byte 0x0 @ 0x12b

Script_branch_12c: @ 12c
	Message 0x1
	Multi3 0x1, 0x1, 0x1, 0x1, 0x800c
	TxtMsgScrpMulti 0xa3, 0xff, 0xfa
	TxtMsgScrpMulti 0x6, 0xff, 0x0
	TxtMsgScrpMulti 0x7, 0xff, 0x1
	TxtMsgScrpMulti 0x8, 0xff, 0x2
	TxtMsgScrpMulti 0xa4, 0xff, 0xfa
	TxtMsgScrpMulti 0x9, 0xff, 0x3
	TxtMsgScrpMulti 0xa, 0xff, 0x4
	TxtMsgScrpMulti 0xb, 0xff, 0x5
	CloseMulti4
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_1de
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1f2
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_21a
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_242
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_1c8
	Jump Script_branch_1d3
@ 1c6

.byte 0x2 @ 0x1c6
.byte 0x0 @ 0x1c7

Script_branch_1c8: @ 1c8
	Message 0x2
	Jump Script_branch_12c
@ 1d1

.byte 0x2 @ 0x1d1
.byte 0x0 @ 0x1d2

Script_branch_1d3: @ 1d3
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 1de

Script_branch_1de: @ 1de
	SetVar 0x8004, 0x1
	Jump Script_branch_26a
@ 1ea

.byte 0x16 @ 0x1ea
.byte 0x0 @ 0x1eb
.byte 0xa0 @ 0x1ec
.byte 0x0 @ 0x1ed
.byte 0x0 @ 0x1ee
.byte 0x0 @ 0x1ef
.byte 0x2 @ 0x1f0
.byte 0x0 @ 0x1f1

Script_branch_1f2: @ 1f2
	SetVar 0x8004, 0x2
	CheckPartyNumberUnion 0x800c
	If 0x800c, 0x2
	CompareLastResultJump LESSER, Script_branch_20f
	Jump Script_branch_26a
@ 20f

Script_branch_20f: @ 20f
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 21a

Script_branch_21a: @ 21a
	SetVar 0x8004, 0x3
	CheckPartyNumberUnion 0x800c
	If 0x800c, 0x3
	CompareLastResultJump LESSER, Script_branch_237
	Jump Script_branch_290
@ 237

Script_branch_237: @ 237
	Message 0x7e
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 242

Script_branch_242: @ 242
	SetVar 0x8004, 0x4
	CheckPartyNumberUnion 0x800c
	If 0x800c, 0x3
	CompareLastResultJump LESSER, Script_branch_25f
	Jump Script_branch_290
@ 25f

Script_branch_25f: @ 25f
	Message 0x7d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 26a

Script_branch_26a: @ 26a
	DecideRules 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_290
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_290
	Jump Script_branch_1d3
@ 28e

.byte 0x2 @ 0x28e
.byte 0x0 @ 0x28f

Script_branch_290: @ 290
	SetVar 0x8005, 0x0
	Jump Script_branch_2e4
@ 29c

.byte 0x2 @ 0x29c
.byte 0x0 @ 0x29d
.byte 0x28 @ 0x29e
.byte 0x0 @ 0x29f
.byte 0x5 @ 0x2a0
.byte 0x80 @ 0x2a1
.byte 0x0 @ 0x2a2
.byte 0x0 @ 0x2a3
.byte 0x16 @ 0x2a4
.byte 0x0 @ 0x2a5
.byte 0x3a @ 0x2a6
.byte 0x0 @ 0x2a7
.byte 0x0 @ 0x2a8
.byte 0x0 @ 0x2a9
.byte 0x2 @ 0x2aa
.byte 0x0 @ 0x2ab
.byte 0x28 @ 0x2ac
.byte 0x0 @ 0x2ad
.byte 0x5 @ 0x2ae
.byte 0x80 @ 0x2af
.byte 0x1 @ 0x2b0
.byte 0x0 @ 0x2b1
.byte 0x16 @ 0x2b2
.byte 0x0 @ 0x2b3
.byte 0x2c @ 0x2b4
.byte 0x0 @ 0x2b5
.byte 0x0 @ 0x2b6
.byte 0x0 @ 0x2b7
.byte 0x2 @ 0x2b8
.byte 0x0 @ 0x2b9
.byte 0x28 @ 0x2ba
.byte 0x0 @ 0x2bb
.byte 0x5 @ 0x2bc
.byte 0x80 @ 0x2bd
.byte 0x2 @ 0x2be
.byte 0x0 @ 0x2bf
.byte 0x16 @ 0x2c0
.byte 0x0 @ 0x2c1
.byte 0x1e @ 0x2c2
.byte 0x0 @ 0x2c3
.byte 0x0 @ 0x2c4
.byte 0x0 @ 0x2c5
.byte 0x2 @ 0x2c6
.byte 0x0 @ 0x2c7
.byte 0x28 @ 0x2c8
.byte 0x0 @ 0x2c9
.byte 0x5 @ 0x2ca
.byte 0x80 @ 0x2cb
.byte 0x3 @ 0x2cc
.byte 0x0 @ 0x2cd
.byte 0x16 @ 0x2ce
.byte 0x0 @ 0x2cf
.byte 0x10 @ 0x2d0
.byte 0x0 @ 0x2d1
.byte 0x0 @ 0x2d2
.byte 0x0 @ 0x2d3
.byte 0x2 @ 0x2d4
.byte 0x0 @ 0x2d5
.byte 0x28 @ 0x2d6
.byte 0x0 @ 0x2d7
.byte 0x5 @ 0x2d8
.byte 0x80 @ 0x2d9
.byte 0x4 @ 0x2da
.byte 0x0 @ 0x2db
.byte 0x16 @ 0x2dc
.byte 0x0 @ 0x2dd
.byte 0x2 @ 0x2de
.byte 0x0 @ 0x2df
.byte 0x0 @ 0x2e0
.byte 0x0 @ 0x2e1
.byte 0x2 @ 0x2e2
.byte 0x0 @ 0x2e3

Script_branch_2e4: @ 2e4
	HealPokemon
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_305
	Jump Script_branch_1d3
@ 303

.byte 0x2 @ 0x303
.byte 0x0 @ 0x304

Script_branch_305: @ 305
	If 0x8004, 0x1
	CompareLastResultCall EQUAL, Script_branch_37a
	If 0x8004, 0x2
	CompareLastResultCall EQUAL, Script_branch_37a
	If 0x8004, 0x3
	CompareLastResultCall EQUAL, Script_branch_37a
	If 0x8004, 0x4
	CompareLastResultCall EQUAL, Script_branch_37f
	Multi 0x1e, 0x1, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xd, 0x0
	Cmd_42 0xe, 0x1
	Cmd_42 0x5, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_384
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_3f7
	Jump Script_branch_1d3
@ 378

.byte 0x2 @ 0x378
.byte 0x0 @ 0x379

Script_branch_37a: @ 37a
	Message 0x16
	Return
@ 37f

Script_branch_37f: @ 37f
	Message 0x2b
	Return
@ 384

Script_branch_384: @ 384
	Message 0x7c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_305
	CloseMsgOnKeyPress
	ChsFriend 0x8004, 0x8005, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_3d3
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_3dd
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_3ea
	Jump Script_branch_46a
@ 3d1

.byte 0x2 @ 0x3d1
.byte 0x0 @ 0x3d2

Script_branch_3d3: @ 3d3
	DeleteEntry
	Jump Script_branch_305
@ 3db

.byte 0x2 @ 0x3db
.byte 0x0 @ 0x3dc

Script_branch_3dd: @ 3dd
	DeleteEntry
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3ea

Script_branch_3ea: @ 3ea
	DeleteEntry
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 3f7

Script_branch_3f7: @ 3f7
	Message 0x7c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_305
	CloseMsgOnKeyPress
	WireBattleWait 0x8004, 0x8005, 0x0, 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_446
	If 0x800c, 0x3
	CompareLastResultJump EQUAL, Script_branch_450
	If 0x800c, 0x4
	CompareLastResultJump EQUAL, Script_branch_45d
	Jump Script_branch_46a
@ 444

.byte 0x2 @ 0x444
.byte 0x0 @ 0x445

Script_branch_446: @ 446
	DeleteEntry
	Jump Script_branch_305
@ 44e

.byte 0x2 @ 0x44e
.byte 0x0 @ 0x44f

Script_branch_450: @ 450
	DeleteEntry
	Message 0x10
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 45d

Script_branch_45d: @ 45d
	DeleteEntry
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 46a

Script_branch_46a: @ 46a
	SetVar 0x40d5, 0x1
	SetFlag 0x966
	Message4 0x34
	SetSaveData 0x2d
	FriendBT 0x60
	CloseMsgOnKeyPress
	PrepareDoorAnimation 0x0, 0x0, 0xd, 0x5, 0x4d
	Call Function_50b
	ApplyMovement 0xff, Movement_524
	WaitMovement
	Call Function_513
	ApplyMovement 0xff, Movement_530
	WaitMovement
	PrepareDoorAnimation 0x0, 0x0, 0xd, 0x2, 0x4d
	Call Function_50b
	ApplyMovement 0xff, Movement_538
	WaitMovement
	Call Function_513
	If 0x8004, 0x4
	CompareLastResultJump EQUAL, Script_branch_4f3
	StorePokeColosseumLost 0x800c
	ScriptCmd_AddValue 0x800c, 0x7
	BattlePokeColosseum 0x14c, 0x0, 0x800c, 0xb, 0x0
	End
@ 4f3

Script_branch_4f3: @ 4f3
	StorePokeColosseumLost 0x800c
	ScriptCmd_AddValue 0x800c, 0x6
	BattlePokeColosseum 0x14d, 0x0, 0x800c, 0xb, 0x0
	End
@ 50b

Function_50b: @ 50b
	OpenDoor 0x4d
	WaitAction 0x4d
	Return
@ 513

Function_513: @ 513
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	Return
@ 51e

Script_3: @ 51e
	Cmd_f6
	Cmd_151
	End
@ 524

Movement_524: @ 524
	WalkRightFast 0x1
	WalkUpFast 0x2
	EndMovement 0x0
@ 530

Movement_530: @ 530
	WalkUpFast 0x1
	EndMovement 0x0
@ 538

Movement_538: @ 538
	WalkUpFast 0x1
	WaitDisappear 0x1
	EndMovement 0x0
@ 544

Script_4: @ 544
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	StorePokeNumParty 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_755
	Jump Script_branch_565
@ 563

.byte 0x2 @ 0x563
.byte 0x0 @ 0x564

Script_branch_565: @ 565
	Message 0x39
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x29, 0x0
	Cmd_42 0x2a, 0x1
	Cmd_42 0xa, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_5cf
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_1d3
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_5b3
	Jump Script_branch_1d3
@ 5b1

.byte 0x2 @ 0x5b1
.byte 0x0 @ 0x5b2

Script_branch_5b3: @ 5b3
	Message 0x3a
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_5cf
	Jump Script_branch_1d3
@ 5cd

.byte 0x2 @ 0x5cd
.byte 0x0 @ 0x5ce

Script_branch_5cf: @ 5cf
	SetVar 0x8004, 0x9
	HealPokemon
	Message 0x7c
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_1d3
	Cmd_31d 0x800c
	If 0x800c, 0xff
	CompareLastResultJump EQUAL, Script_branch_68e
	SetVar 0x40d5, 0x2
	SetFlag 0x966
	CallStandard 0x7d6
	CopyVar 0x800c, 0x4000
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_62d
	SetVar 0x40d5, 0x0
	ClearFlag 0x966
	Jump Script_branch_1d3
@ 62d

Script_branch_62d: @ 62d
	SetVar 0x40d5, 0x2
	SetFlag 0x966
	Message 0x3f
	CloseMsgOnKeyPress
	PrepareDoorAnimation 0x0, 0x0, 0x8, 0x5, 0x4d
	Call Function_50b
	ApplyMovement 0xff, Movement_524
	WaitMovement
	Call Function_513
	ApplyMovement 0xff, Movement_530
	WaitMovement
	PrepareDoorAnimation 0x0, 0x0, 0x8, 0x2, 0x4d
	Call Function_50b
	ApplyMovement 0xff, Movement_538
	WaitMovement
	Call Function_513
	ReleaseAll
	UnionRoom
	End
@ 68e

Script_branch_68e: @ 68e
	CallStandard 0x809
	End
@ 694

Script_5: @ 694
	End
@ 696

Script_6: @ 696
	End
@ 698

Script_7: @ 698
	End
@ 69a

Script_8: @ 69a
	End
@ 69c

Script_9: @ 69c
	End
@ 69e

Script_10: @ 69e
	End
@ 6a0

Script_11: @ 6a0
	PreWfc
	Wfc_
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	End
@ 6b4

Script_12: @ 6b4
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetFlag 0xaa
	Message 0x66
	Jump Script_branch_6cb
@ 6c9

.byte 0x2 @ 0x6c9
.byte 0x0 @ 0x6ca

Script_branch_6cb: @ 6cb
	Message 0x67
	Multi 0x1, 0x1, 0x0, 0x1, 0x800c
	Cmd_42 0x29, 0x0
	Cmd_42 0x2a, 0x1
	Cmd_42 0xa, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_724
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_74a
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_719
	Jump Script_branch_74a
@ 717

.byte 0x2 @ 0x717
.byte 0x0 @ 0x718

Script_branch_719: @ 719
	Message 0x69
	Jump Script_branch_6cb
@ 722

.byte 0x2 @ 0x722
.byte 0x0 @ 0x723

Script_branch_724: @ 724
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	WriteAutograph
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	Jump Script_branch_74a
@ 748

.byte 0x2 @ 0x748
.byte 0x0 @ 0x749

Script_branch_74a: @ 74a
	Message 0x68
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 755

Script_branch_755: @ 755
	Call Function_76d
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 763

Script_17: @ 763
	Call Function_76d
	ExitStandard
	End
@ 76d

Function_76d: @ 76d
	Message 0x7f
	Return
@ 772

.byte 0x0 @ 0x772
.byte 0x0 @ 0x773

@ end_0x774
