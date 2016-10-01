.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	.hword 0xfd13
@ e

Script_1: @ e
	End
@ 10

Script_2: @ 10
	If 0x40dc, 0x0
	CompareLastResultCall 0x5, Script_branch_1f
	End
@ 1f

Script_branch_1f: @ 1f
	RemovePeople2 0xff
	Return
@ 25

Script_3: @ 25
	LockAll
	Call Function_8e
	CheckIdPlayer 0x800c, 0x4
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_f0
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_10a
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_124
	Jump Script_branch_d6
Script_branch_66: @ 66
	FadeScreen 0x6, 0x1, 0x0, 0x0
	ResetScreen
	Warp 0x14a, 0x0, 0x7, 0x6, 0x0
	FadeScreen 0x6, 0x1, 0x1, 0x0
	ResetScreen
	ReleaseAll
	End
@ 8e

Function_8e: @ 8e
	PrepareDoorAnimation 0x0, 0x0, 0x2, 0x2, 0x4d
	OpenDoor 0x4d
	WaitAction 0x4d
	ApplyMovement 0x0, Movement_140
	WaitMovement
	AddPeople2 0xff
	ApplyMovement 0xff, Movement_14c
	WaitMovement
	CloseDoor 0x4d
	WaitAction 0x4d
	WaitClose 0x4d
	Return
@ c2

.byte 0x5e @ 0xc2
.byte 0x0 @ 0xc3
.byte 0x0 @ 0xc4
.byte 0x0 @ 0xc5
.byte 0x8a @ 0xc6
.byte 0x0 @ 0xc7
.byte 0x0 @ 0xc8
.byte 0x0 @ 0xc9
.byte 0x5e @ 0xca
.byte 0x0 @ 0xcb
.byte 0xff @ 0xcc
.byte 0x0 @ 0xcd
.byte 0x92 @ 0xce
.byte 0x0 @ 0xcf
.byte 0x0 @ 0xd0
.byte 0x0 @ 0xd1
.byte 0x5f @ 0xd2
.byte 0x0 @ 0xd3
.byte 0x1b @ 0xd4
.byte 0x0 @ 0xd5

Script_branch_d6: @ d6
	ApplyMovement 0x0, Movement_178
	ApplyMovement 0xff, Movement_188
	WaitMovement
	Jump Script_branch_66
	End
@ f0

Script_branch_f0: @ f0
	ApplyMovement 0x0, Movement_19c
	ApplyMovement 0xff, Movement_1ac
	WaitMovement
	Jump Script_branch_66
	End
@ 10a

Script_branch_10a: @ 10a
	ApplyMovement 0x0, Movement_1c0
	ApplyMovement 0xff, Movement_1d0
	WaitMovement
	Jump Script_branch_66
	End
@ 124

Script_branch_124: @ 124
	ApplyMovement 0x0, Movement_1e4
	ApplyMovement 0xff, Movement_1f4
	WaitMovement
	Jump Script_branch_66
	End
@ 13e

.byte 0x0 @ 0x13e
.byte 0x0 @ 0x13f

Movement_140: @ 140
	WalkDownFast 0x3
	SeeUp 0x1
	EndMovement 0x0
@ 14c

Movement_14c: @ 14c
	WalkDownFast 0x2
	EndMovement 0x0
@ 154

.byte 0x0 @ 0x154
.byte 0x0 @ 0x155
.byte 0x1 @ 0x156
.byte 0x0 @ 0x157
.byte 0xc @ 0x158
.byte 0x0 @ 0x159
.byte 0x2 @ 0x15a
.byte 0x0 @ 0x15b
.byte 0x45 @ 0x15c
.byte 0x0 @ 0x15d
.byte 0x1 @ 0x15e
.byte 0x0 @ 0x15f
.byte 0xfe @ 0x160
.byte 0x0 @ 0x161
.byte 0x0 @ 0x162
.byte 0x0 @ 0x163
.byte 0xf @ 0x164
.byte 0x0 @ 0x165
.byte 0x1 @ 0x166
.byte 0x0 @ 0x167
.byte 0x0 @ 0x168
.byte 0x0 @ 0x169
.byte 0x1 @ 0x16a
.byte 0x0 @ 0x16b
.byte 0x14 @ 0x16c
.byte 0x0 @ 0x16d
.byte 0x1 @ 0x16e
.byte 0x0 @ 0x16f
.byte 0x45 @ 0x170
.byte 0x0 @ 0x171
.byte 0x1 @ 0x172
.byte 0x0 @ 0x173
.byte 0xfe @ 0x174
.byte 0x0 @ 0x175
.byte 0x0 @ 0x176
.byte 0x0 @ 0x177

Movement_178: @ 178
	WalkRightFast 0x4
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 188

Movement_188: @ 188
	WalkDownFast 0x1
	WalkRightFast 0x4
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 19c

Movement_19c: @ 19c
	WalkRightFast 0x8
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1ac

Movement_1ac: @ 1ac
	WalkDownFast 0x1
	WalkRightFast 0x8
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1c0

Movement_1c0: @ 1c0
	WalkRightFast 0xc
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1d0

Movement_1d0: @ 1d0
	WalkDownFast 0x1
	WalkRightFast 0xc
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1e4

Movement_1e4: @ 1e4
	WalkRightFast 0x10
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 1f4

Movement_1f4: @ 1f4
	WalkDownFast 0x1
	WalkRightFast 0x10
	WalkUpFast 0x2
	WaitDisappear 0x1
	EndMovement 0x0
@ 208

@ end_0x208
