.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVar 0x4001, 0x13
	Message 0x0
	ShowCoins 0x15, 0x1
	SetVar 0x8005, 0x0
	SetVar 0x8006, 0x0
	Jump Script_branch_39
@ 37

.byte 0x2 @ 0x37
.byte 0x0 @ 0x38

Script_branch_39: @ 39
	Message 0x1
	Call Function_119
	If 0x800c, 0xfffe
	CompareLastResultJump EQUAL, Script_branch_d8
	If2 0x800c, 0x4001
	CompareLastResultJump EQUAL, Script_branch_d8
	ChsPrizeCasino 0x800c, 0x8000, 0x8001
	If 0x8000, 0x148
	CompareLastResultCall LESSER, Script_branch_100
	If 0x8000, 0x148
	CompareLastResultCall 0x4, Script_branch_10a
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_39
	CheckCoinsCasino2 0x800c, 0x8001
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_f5
	CheckStoreItem 0x8000, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_e5
	Message 0x4
	TakeItem 0x8000, 1, 0x800c
	TakeCoinsCasino 0x8001
	UpdateCoins
	PlayFanfare 0x644
	WaitFanfare 0x644
	Jump Script_branch_39
@ d6

.byte 0x2 @ 0xd6
.byte 0x0 @ 0xd7

Script_branch_d8: @ d8
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	HideCoins
	ReleaseAll
	End
@ e5

Script_branch_e5: @ e5
	SetVarItem 0x0, 0x8000
	Message 0x6
	Jump Script_branch_39
@ f3

.byte 0x2 @ 0xf3
.byte 0x0 @ 0xf4

Script_branch_f5: @ f5
	Message 0x5
	Jump Script_branch_39
@ fe

.byte 0x2 @ 0xfe
.byte 0x0 @ 0xff

Script_branch_100: @ 100
	SetVarItem 0x0, 0x8000
	Message 0x2
	Return
@ 10a

Script_branch_10a: @ 10a
	SetVarItem 0x0, 0x8000
	SetVarAtkItem 0x1, 0x8000
	Message 0x3
	Return
@ 119

Function_119: @ 119
	SetVar 0x8008, 0x0
	SetVar 0x8009, 0x0
	Multi3 0x1, 0x1, 0x0, 0x1, 0x800c
	Jump Script_branch_135
@ 133

.byte 0x2 @ 0x133
.byte 0x0 @ 0x134

Script_branch_135: @ 135
	ChsPrizeCasino 0x8008, 0x8000, 0x8001
	SetVarItem 0x0, 0x8000
	SetvarIdNumber 0x1, 0x8001, 0x1, 0x5
	TxtMsgScrpMulti 0xa8, 0xff, 0x8008
	ScriptCmd_AddValue 0x8008, 0x1
	If2 0x8008, 0x4001
	CompareLastResultJump LESSER, Script_branch_135
	Jump Script_branch_16c
@ 16a

.byte 0x2 @ 0x16a
.byte 0x0 @ 0x16b

Script_branch_16c: @ 16c
	TxtMsgScrpMulti 0xa9, 0xff, 0x8008
	Cmd_306 0x8005, 0x8006
	Return
@ 17c

Script_2: @ 17c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xc4
	CompareLastResultJump EQUAL, Script_branch_1af
	SetFlag 0xc4
	Message 0x8
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_250
	Jump Script_branch_1cb
@ 1ad

.byte 0x2 @ 0x1ad
.byte 0x0 @ 0x1ae

Script_branch_1af: @ 1af
	Message 0x9
	YesNoBox 0x800c
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_250
	Jump Script_branch_1cb
@ 1c9

.byte 0x2 @ 0x1c9
.byte 0x0 @ 0x1ca

Script_branch_1cb: @ 1cb
	CloseMsgOnKeyPress
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	ChsPokemenu
	StorePokeMenu2 0x8000
	CallEnd
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	If 0x8000, 0xff
	CompareLastResultJump EQUAL, Script_branch_250
	CheckPokeEgg 0x8000, 0x8001
	If 0x8001, 0x0
	CompareLastResultJump EQUAL, Script_branch_25b
	Cmd_2ff 0x8000, 0x8004
	If 0x8004, 0xffff
	CompareLastResultJump EQUAL, Script_branch_245
	CheckMove 0x800c, HIDDEN_POWER, 0x8000
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_266
	Cmd_2fd 0x0, 0x8004
	Message 0xb
	Jump Script_branch_276
@ 243

.byte 0x2 @ 0x243
.byte 0x0 @ 0x244

Script_branch_245: @ 245
	Message 0xe
	Jump Script_branch_276
@ 24e

.byte 0x2 @ 0x24e
.byte 0x0 @ 0x24f

Script_branch_250: @ 250
	Message 0xc
	Jump Script_branch_276
@ 259

.byte 0x2 @ 0x259
.byte 0x0 @ 0x25a

Script_branch_25b: @ 25b
	Message 0xd
	Jump Script_branch_276
@ 264

.byte 0x2 @ 0x264
.byte 0x0 @ 0x265

Script_branch_266: @ 266
	Cmd_2fd 0x0, 0x8004
	Message 0xa
	Jump Script_branch_276
@ 274

.byte 0x2 @ 0x274
.byte 0x0 @ 0x275

Script_branch_276: @ 276
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 27e

Script_3: @ 27e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0xf
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 291

.byte 0x0 @ 0x291
.byte 0x0 @ 0x292
.byte 0x0 @ 0x293

@ end_0x294
