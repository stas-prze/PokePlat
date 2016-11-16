.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	.hword 0xfd13
@ 1a

Script_1: @ 1a
	DeactWireless
	ChangeOwPosition 0x1, 0x48, 0x68
	ChangeOwPosition 0x2, 0x1a8, 0x57
	ChangeOwPosition 0x3, 0xc8, 0xb9
	ChangeOwPosition 0x4, 0x14f, 0x108
	ChangeOwPosition 0x8, 0xaf, 0x117
	ChangeOwPosition 0x9, 0x1a8, 0x1b7
	ChangeOwPosition 0xa, 0x57, 0x1c8
	ChangeOwPosition 0xb, 0x137, 0x166
	ChangeOwPosition 0x0, 0xe8, 0x57
	ChangeOwPosition 0x5, 0x148, 0x97
	ChangeOwPosition 0x6, 0xe8, 0xd7
	ChangeOwPosition 0x7, 0xe8, 0x12a
	ChangeOwPosition 0xc, 0x117, 0x148
	ChangeOwPosition 0xd, 0x117, 0x1c8
	ChangeOwPosition 0xe, 0xb7, 0x188
	ChangeOwPosition 0xf, 0x117, 0xf5
	ChangeOwPosition 0x11, 0x28, 0x1d7
	ChangeOwPosition 0x12, 0x1d7, 0x48
	ChangeOwPosition 0x13, 0x1d7, 0x1d7
	ChangeOwPosition 0x14, 0x28, 0x48
	End
@ be

Script_2: @ be
	If 0x40d0, 0x0
	CompareLastResultJump EQUAL, Script_branch_cd
	End
@ cd

Script_branch_cd: @ cd
	CheckSpritePosition 0x4000, 0x4001
	ScriptCmd_AddValue 0x4000, 0x1
	SetOwPosition 0x10, 0x4000, 0x1, 0x4001, 0x1
	End
@ e7

Script_3: @ e7
	UndergroundFunction2 0x0
	Jump Script_branch_f3
@ f1

.byte 0x2 @ 0xf1
.byte 0x0 @ 0xf2

Script_branch_f3: @ f3
	UndergroundFunction 0x1, 0x800c
	CopyVar 0x8004, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0xfffb
	CompareLastResultJump EQUAL, Script_branch_141
	If 0x8008, 0xfffc
	CompareLastResultJump EQUAL, Script_branch_14d
	If 0x8008, 0xfffd
	CompareLastResultJump EQUAL, Script_branch_159
	If 0x8008, 0xffff
	CompareLastResultJump EQUAL, Script_branch_165
	Jump Script_branch_17f
@ 13f

.byte 0x2 @ 0x13f
.byte 0x0 @ 0x140

Script_branch_141: @ 141
	UndergroundFunction2 0x5
	Jump Script_branch_171
@ 14b

.byte 0x2 @ 0x14b
.byte 0x0 @ 0x14c

Script_branch_14d: @ 14d
	UndergroundFunction2 0x3
	Jump Script_branch_171
@ 157

.byte 0x2 @ 0x157
.byte 0x0 @ 0x158

Script_branch_159: @ 159
	UndergroundFunction2 0x4
	Jump Script_branch_171
@ 163

.byte 0x2 @ 0x163
.byte 0x0 @ 0x164

Script_branch_165: @ 165
	UndergroundFunction2 0x9
	Jump Script_branch_189
@ 16f

.byte 0x2 @ 0x16f
.byte 0x0 @ 0x170

Script_branch_171: @ 171
	Cmd_30
	UndergroundFunction2 0x8
	Jump Script_branch_f3
@ 17d

.byte 0x2 @ 0x17d
.byte 0x0 @ 0x17e

Script_branch_17f: @ 17f
	Cmd_30
	Jump Script_branch_171
@ 187

.byte 0x2 @ 0x187
.byte 0x0 @ 0x188

Script_branch_189: @ 189
	Cmd_30
	UndergroundStart
	End
@ 18f

Script_4: @ 18f
	UndergroundFunction2 0x0
	Jump Script_branch_19b
@ 199

.byte 0x2 @ 0x199
.byte 0x0 @ 0x19a

Script_branch_19b: @ 19b
	UndergroundFunction 0x0, 0x800c
	CopyVar 0x8004, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0xfffb
	CompareLastResultJump EQUAL, Script_branch_201
	If 0x8008, 0xfffc
	CompareLastResultJump EQUAL, Script_branch_1e9
	If 0x8008, 0xfffd
	CompareLastResultJump EQUAL, Script_branch_1f5
	If 0x8008, 0xffff
	CompareLastResultJump EQUAL, Script_branch_165
	Jump Script_branch_20d
@ 1e7

.byte 0x2 @ 0x1e7
.byte 0x0 @ 0x1e8

Script_branch_1e9: @ 1e9
	UndergroundFunction2 0x3
	Jump Script_branch_217
@ 1f3

.byte 0x2 @ 0x1f3
.byte 0x0 @ 0x1f4

Script_branch_1f5: @ 1f5
	UndergroundFunction2 0x4
	Jump Script_branch_217
@ 1ff

.byte 0x2 @ 0x1ff
.byte 0x0 @ 0x200

Script_branch_201: @ 201
	UndergroundFunction2 0x5
	Jump Script_branch_217
@ 20b

.byte 0x2 @ 0x20b
.byte 0x0 @ 0x20c

Script_branch_20d: @ 20d
	Cmd_30
	Jump Script_branch_217
@ 215

.byte 0x2 @ 0x215
.byte 0x0 @ 0x216

Script_branch_217: @ 217
	Cmd_30
	UndergroundFunction2 0x8
	Jump Script_branch_19b
@ 223

.byte 0x2 @ 0x223
.byte 0x0 @ 0x224

Script_5: @ 225
	UndergroundFunction2 0x1b
	Jump Script_branch_231
@ 22f

.byte 0x2 @ 0x22f
.byte 0x0 @ 0x230

Script_branch_231: @ 231
	UndergroundFunction 0x2, 0x800c
	CopyVar 0x8004, 0x800c
	CopyVar 0x8008, 0x800c
	If 0x8008, 0xfffc
	CompareLastResultJump EQUAL, Script_branch_265
	If 0x8008, 0xffff
	CompareLastResultJump EQUAL, Script_branch_165
	Jump Script_branch_271
@ 263

.byte 0x2 @ 0x263
.byte 0x0 @ 0x264

Script_branch_265: @ 265
	UndergroundFunction2 0x3
	Jump Script_branch_27b
@ 26f

.byte 0x2 @ 0x26f
.byte 0x0 @ 0x270

Script_branch_271: @ 271
	Cmd_30
	Jump Script_branch_27b
@ 279

.byte 0x2 @ 0x279
.byte 0x0 @ 0x27a

Script_branch_27b: @ 27b
	Cmd_30
	UndergroundFunction2 0x8
	Jump Script_branch_231
@ 287

.byte 0x2 @ 0x287
.byte 0x0 @ 0x288

Script_6: @ 289
	ApplyMovement 0x10, Movement_2d4
	WaitMovement
	UndergroundId 0x3
	UndergroundFunction2 0x5b
	Cmd_30
	UndergroundStart
	ApplyMovement 0x10, Movement_2e4
	WaitMovement
	PlayFanfare 0x630
	ApplyMovement 0x10, Movement_2f0
	WaitMovement
	RemovePeople 0x10
	SetVar 0x40d0, 0x1
	SetFlag 0x992
	End
@ 2c7

.byte 0x0 @ 0x2c7
.byte 0x3f @ 0x2c8
.byte 0x0 @ 0x2c9
.byte 0x1 @ 0x2ca
.byte 0x0 @ 0x2cb
.byte 0x23 @ 0x2cc
.byte 0x0 @ 0x2cd
.byte 0x1 @ 0x2ce
.byte 0x0 @ 0x2cf
.byte 0xfe @ 0x2d0
.byte 0x0 @ 0x2d1
.byte 0x0 @ 0x2d2
.byte 0x0 @ 0x2d3

Movement_2d4: @ 2d4
	MoveLeftFast 0x1
	Exclamation 0x1
	Move_3f 0x1
	EndMovement 0x0
@ 2e4

Movement_2e4: @ 2e4
	MoveDownFast 0x1
	Move_3f 0x2
	EndMovement 0x0
@ 2f0

Movement_2f0: @ 2f0
	SeeRight 0x1
	Move_3d 0x1
	SeeUp 0x1
	Move_3d 0x1
	SeeLeft 0x1
	Move_3d 0x1
	SeeDown 0x1
	Move_3d 0x1
	SeeRight 0x1
	Move_3c 0x1
	SeeUp 0x1
	Move_3c 0x1
	SeeLeft 0x1
	Move_3c 0x1
	SeeDown 0x1
	Move_43 0x1
	Move_3f 0x2
	EndMovement 0x0
@ 338

@ end_0x338
