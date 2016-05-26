.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	.hword 0xfd13
@ 1e

Script_1: @ 1e
	CheckGender 0x4000
	If 0x4000, 0x0
	CompareLastResultJump 0x1, Script_branch_3e
	If 0x4000, 0x1
	CompareLastResultJump 0x1, Script_branch_46
	End
@ 3e

Script_branch_3e: @ 3e
	SetVar 0x4020, 0x61
	End
@ 46

Script_branch_46: @ 46
	SetVar 0x4020, 0x0
	End
@ 4e

Script_2: @ 4e
	CheckFlag 0x8e
	CompareLastResultJump 0x1, Script_branch_5b
	End
@ 5b

Script_branch_5b: @ 5b
	SetFlag 0x18f
	RemovePeople 0x3
	RemovePeople 0x2
	ClearFlag 0x8e
	End
@ 6d

.byte 0x2 @ 0x6d
.byte 0x0 @ 0x6e

Script_3: @ 6f
	LockAll
	StopFollow
	ApplyMovement 0x5, Movement_298
	ApplyMovement 0xff, Movement_368
	WaitMovement
	SetVariableRival 0x0
	Message 0x0
	CloseMsgOnKeyPress
	LockCam 0x2e, 0x35
	ApplyMovement 0xf1, Movement_1b4
	WaitMovement
	Return2 0xf, 0x800c
	Message 0x1
	CloseMsgOnKeyPress
	Return2 0x1e, 0x800c
	ApplyMovement 0x4, Movement_1e0
	ApplyMovement 0xf1, Movement_1c0
	WaitMovement
	ZoomCam
	Message 0x2
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_2a0
	ApplyMovement 0xff, Movement_370
	WaitMovement
	ApplyMovement 0x4, Movement_1f0
	WaitMovement
	PlayFanfare 0x603
	RemovePeople 0x4
	Return2 0x32, 0x800c
	ApplyMovement 0xff, Movement_378
	ApplyMovement 0x5, Movement_2ac
	WaitMovement
	SetVariableRival 0x0
	Message 0x3
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_2b8
	ApplyMovement 0xff, Movement_380
	WaitMovement
	Return2 0x1e, 0x800c
	SetVarHero 0x1
	Message 0x4
	PlayCry 0x1e1, 0x0
	Message 0x5
	WaitCry
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_2c0
	ApplyMovement 0xff, Movement_388
	WaitMovement
	Return2 0xf, 0x800c
	ApplyMovement 0x5, Movement_2f0
	WaitMovement
	SetVariableRival 0x0
	SetVarHero 0x1
	Message 0x6
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_2e8
	WaitMovement
	Return2 0xf, 0x800c
	SetVarHero 0x1
	Message 0x7
	CloseMsgOnKeyPress
	ApplyMovement 0x5, Movement_2f8
	ApplyMovement 0xff, Movement_39c
	WaitMovement
	SetFlag 0x196
	RemovePeople 0x5
	PlayFanfare 0x603
	Jump Script_branch_1a1
@ 19f

.byte 0x2 @ 0x19f
.byte 0x0 @ 0x1a0

Script_branch_1a1: @ 1a1
	SetVar 0x4086, 0x4
	SetVar 0x4095, 0x1
	ReleaseAll
	End
@ 1b1

.byte 0x0 @ 0x1b1
.byte 0x0 @ 0x1b2
.byte 0x0 @ 0x1b3

Movement_1b4: @ 1b4
	Move_3f 0x1
	WalkUpFast 0x9
	EndMovement 0x0
@ 1c0

Movement_1c0: @ 1c0
	WalkDownFast 0x9
	EndMovement 0x0
@ 1c8

.byte 0x23 @ 0x1c8
.byte 0x0 @ 0x1c9
.byte 0x1 @ 0x1ca
.byte 0x0 @ 0x1cb
.byte 0xfe @ 0x1cc
.byte 0x0 @ 0x1cd
.byte 0x0 @ 0x1ce
.byte 0x0 @ 0x1cf
.byte 0x21 @ 0x1d0
.byte 0x0 @ 0x1d1
.byte 0x1 @ 0x1d2
.byte 0x0 @ 0x1d3
.byte 0x3f @ 0x1d4
.byte 0x0 @ 0x1d5
.byte 0x2 @ 0x1d6
.byte 0x0 @ 0x1d7
.byte 0x23 @ 0x1d8
.byte 0x0 @ 0x1d9
.byte 0x1 @ 0x1da
.byte 0x0 @ 0x1db
.byte 0xfe @ 0x1dc
.byte 0x0 @ 0x1dd
.byte 0x0 @ 0x1de
.byte 0x0 @ 0x1df

Movement_1e0: @ 1e0
	WalkDownFast 0x5
	WalkLeftFast 0x1
	WalkDownFast 0x4
	EndMovement 0x0
@ 1f0

Movement_1f0: @ 1f0
	WalkDownFast 0x3
	WaitDisappear 0x1
	EndMovement 0x0
@ 1fc

.byte 0x3f @ 0x1fc
.byte 0x0 @ 0x1fd
.byte 0x1 @ 0x1fe
.byte 0x0 @ 0x1ff
.byte 0x22 @ 0x200
.byte 0x0 @ 0x201
.byte 0x1 @ 0x202
.byte 0x0 @ 0x203
.byte 0xfe @ 0x204
.byte 0x0 @ 0x205
.byte 0x0 @ 0x206
.byte 0x0 @ 0x207
.byte 0x22 @ 0x208
.byte 0x0 @ 0x209
.byte 0x1 @ 0x20a
.byte 0x0 @ 0x20b
.byte 0xfe @ 0x20c
.byte 0x0 @ 0x20d
.byte 0x0 @ 0x20e
.byte 0x0 @ 0x20f
.byte 0xd @ 0x210
.byte 0x0 @ 0x211
.byte 0x4 @ 0x212
.byte 0x0 @ 0x213
.byte 0xe @ 0x214
.byte 0x0 @ 0x215
.byte 0x2 @ 0x216
.byte 0x0 @ 0x217
.byte 0xd @ 0x218
.byte 0x0 @ 0x219
.byte 0x5 @ 0x21a
.byte 0x0 @ 0x21b
.byte 0xfe @ 0x21c
.byte 0x0 @ 0x21d
.byte 0x0 @ 0x21e
.byte 0x0 @ 0x21f
.byte 0xe @ 0x220
.byte 0x0 @ 0x221
.byte 0x1 @ 0x222
.byte 0x0 @ 0x223
.byte 0xd @ 0x224
.byte 0x0 @ 0x225
.byte 0x5 @ 0x226
.byte 0x0 @ 0x227
.byte 0xe @ 0x228
.byte 0x0 @ 0x229
.byte 0x1 @ 0x22a
.byte 0x0 @ 0x22b
.byte 0xd @ 0x22c
.byte 0x0 @ 0x22d
.byte 0x3 @ 0x22e
.byte 0x0 @ 0x22f
.byte 0xfe @ 0x230
.byte 0x0 @ 0x231
.byte 0x0 @ 0x232
.byte 0x0 @ 0x233
.byte 0xd @ 0x234
.byte 0x0 @ 0x235
.byte 0x1 @ 0x236
.byte 0x0 @ 0x237
.byte 0x22 @ 0x238
.byte 0x0 @ 0x239
.byte 0x1 @ 0x23a
.byte 0x0 @ 0x23b
.byte 0x3e @ 0x23c
.byte 0x0 @ 0x23d
.byte 0x1 @ 0x23e
.byte 0x0 @ 0x23f
.byte 0x27 @ 0x240
.byte 0x0 @ 0x241
.byte 0x1 @ 0x242
.byte 0x0 @ 0x243
.byte 0x3e @ 0x244
.byte 0x0 @ 0x245
.byte 0x1 @ 0x246
.byte 0x0 @ 0x247
.byte 0x26 @ 0x248
.byte 0x0 @ 0x249
.byte 0x1 @ 0x24a
.byte 0x0 @ 0x24b
.byte 0x3f @ 0x24c
.byte 0x0 @ 0x24d
.byte 0x1 @ 0x24e
.byte 0x0 @ 0x24f
.byte 0x21 @ 0x250
.byte 0x0 @ 0x251
.byte 0x1 @ 0x252
.byte 0x0 @ 0x253
.byte 0x3f @ 0x254
.byte 0x0 @ 0x255
.byte 0x1 @ 0x256
.byte 0x0 @ 0x257
.byte 0xfe @ 0x258
.byte 0x0 @ 0x259
.byte 0x0 @ 0x25a
.byte 0x0 @ 0x25b
.byte 0xd @ 0x25c
.byte 0x0 @ 0x25d
.byte 0x3 @ 0x25e
.byte 0x0 @ 0x25f
.byte 0x45 @ 0x260
.byte 0x0 @ 0x261
.byte 0x1 @ 0x262
.byte 0x0 @ 0x263
.byte 0xfe @ 0x264
.byte 0x0 @ 0x265
.byte 0x0 @ 0x266
.byte 0x0 @ 0x267
.byte 0xc @ 0x268
.byte 0x0 @ 0x269
.byte 0x4 @ 0x26a
.byte 0x0 @ 0x26b
.byte 0xf @ 0x26c
.byte 0x0 @ 0x26d
.byte 0x2 @ 0x26e
.byte 0x0 @ 0x26f
.byte 0xc @ 0x270
.byte 0x0 @ 0x271
.byte 0x4 @ 0x272
.byte 0x0 @ 0x273
.byte 0x22 @ 0x274
.byte 0x0 @ 0x275
.byte 0x1 @ 0x276
.byte 0x0 @ 0x277
.byte 0xfe @ 0x278
.byte 0x0 @ 0x279
.byte 0x0 @ 0x27a
.byte 0x0 @ 0x27b
.byte 0x21 @ 0x27c
.byte 0x0 @ 0x27d
.byte 0x1 @ 0x27e
.byte 0x0 @ 0x27f
.byte 0x3f @ 0x280
.byte 0x0 @ 0x281
.byte 0x1 @ 0x282
.byte 0x0 @ 0x283
.byte 0x27 @ 0x284
.byte 0x0 @ 0x285
.byte 0x1 @ 0x286
.byte 0x0 @ 0x287
.byte 0x3f @ 0x288
.byte 0x0 @ 0x289
.byte 0x1 @ 0x28a
.byte 0x0 @ 0x28b
.byte 0x21 @ 0x28c
.byte 0x0 @ 0x28d
.byte 0x1 @ 0x28e
.byte 0x0 @ 0x28f
.byte 0x3e @ 0x290
.byte 0x0 @ 0x291
.byte 0x1 @ 0x292
.byte 0x0 @ 0x293
.byte 0xfe @ 0x294
.byte 0x0 @ 0x295
.byte 0x0 @ 0x296
.byte 0x0 @ 0x297

Movement_298: @ 298
	WalkUpVeryFast  0x1
	EndMovement 0x0
@ 2a0

Movement_2a0: @ 2a0
	WalkRightFast 0x1
	MoveLeftFast 0x1
	EndMovement 0x0
@ 2ac

Movement_2ac: @ 2ac
	WalkLeftFast 0x1
	MoveDownFast 0x1
	EndMovement 0x0
@ 2b8

Movement_2b8: @ 2b8
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 2c0

Movement_2c0: @ 2c0
	Exclamation 0x1
	WalkUpVeryFast  0x3
	Move_3f 0x3
	MoveLeftVeryFast 0x1
	Move_3f 0x1
	MoveUpVeryFast 0x1
	Move_3f 0x2
	WalkDownVeryFast  0x3
	MoveLeftVeryFast 0x1
	EndMovement 0x0
@ 2e8

Movement_2e8: @ 2e8
	Exclamation 0x1
	EndMovement 0x0
@ 2f0

Movement_2f0: @ 2f0
	MoveLeftVeryFast 0x4
	EndMovement 0x0
@ 2f8

Movement_2f8: @ 2f8
	WalkDownVeryFast  0x2
	EndMovement 0x0
@ 300

.byte 0x23 @ 0x300
.byte 0x0 @ 0x301
.byte 0x1 @ 0x302
.byte 0x0 @ 0x303
.byte 0xfe @ 0x304
.byte 0x0 @ 0x305
.byte 0x0 @ 0x306
.byte 0x0 @ 0x307
.byte 0x27 @ 0x308
.byte 0x0 @ 0x309
.byte 0x1 @ 0x30a
.byte 0x0 @ 0x30b
.byte 0xfe @ 0x30c
.byte 0x0 @ 0x30d
.byte 0x0 @ 0x30e
.byte 0x0 @ 0x30f
.byte 0x21 @ 0x310
.byte 0x0 @ 0x311
.byte 0x1 @ 0x312
.byte 0x0 @ 0x313
.byte 0xfe @ 0x314
.byte 0x0 @ 0x315
.byte 0x0 @ 0x316
.byte 0x0 @ 0x317
.byte 0x3f @ 0x318
.byte 0x0 @ 0x319
.byte 0x7 @ 0x31a
.byte 0x0 @ 0x31b
.byte 0xf @ 0x31c
.byte 0x0 @ 0x31d
.byte 0x1 @ 0x31e
.byte 0x0 @ 0x31f
.byte 0x22 @ 0x320
.byte 0x0 @ 0x321
.byte 0x1 @ 0x322
.byte 0x0 @ 0x323
.byte 0xfe @ 0x324
.byte 0x0 @ 0x325
.byte 0x0 @ 0x326
.byte 0x0 @ 0x327
.byte 0x3e @ 0x328
.byte 0x0 @ 0x329
.byte 0x1 @ 0x32a
.byte 0x0 @ 0x32b
.byte 0x21 @ 0x32c
.byte 0x0 @ 0x32d
.byte 0x1 @ 0x32e
.byte 0x0 @ 0x32f
.byte 0xfe @ 0x330
.byte 0x0 @ 0x331
.byte 0x0 @ 0x332
.byte 0x0 @ 0x333
.byte 0xe @ 0x334
.byte 0x0 @ 0x335
.byte 0x1 @ 0x336
.byte 0x0 @ 0x337
.byte 0xd @ 0x338
.byte 0x0 @ 0x339
.byte 0x1 @ 0x33a
.byte 0x0 @ 0x33b
.byte 0x22 @ 0x33c
.byte 0x0 @ 0x33d
.byte 0x1 @ 0x33e
.byte 0x0 @ 0x33f
.byte 0xfe @ 0x340
.byte 0x0 @ 0x341
.byte 0x0 @ 0x342
.byte 0x0 @ 0x343
.byte 0x25 @ 0x344
.byte 0x0 @ 0x345
.byte 0x1 @ 0x346
.byte 0x0 @ 0x347
.byte 0xfe @ 0x348
.byte 0x0 @ 0x349
.byte 0x0 @ 0x34a
.byte 0x0 @ 0x34b
.byte 0xd @ 0x34c
.byte 0x0 @ 0x34d
.byte 0x1 @ 0x34e
.byte 0x0 @ 0x34f
.byte 0xe @ 0x350
.byte 0x0 @ 0x351
.byte 0x1 @ 0x352
.byte 0x0 @ 0x353
.byte 0xd @ 0x354
.byte 0x0 @ 0x355
.byte 0x3 @ 0x356
.byte 0x0 @ 0x357
.byte 0xe @ 0x358
.byte 0x0 @ 0x359
.byte 0x1 @ 0x35a
.byte 0x0 @ 0x35b
.byte 0xd @ 0x35c
.byte 0x0 @ 0x35d
.byte 0x6 @ 0x35e
.byte 0x0 @ 0x35f
.byte 0x45 @ 0x360
.byte 0x0 @ 0x361
.byte 0x1 @ 0x362
.byte 0x0 @ 0x363
.byte 0xfe @ 0x364
.byte 0x0 @ 0x365
.byte 0x0 @ 0x366
.byte 0x0 @ 0x367

Movement_368: @ 368
	WalkUpFast 0x1
	EndMovement 0x0
@ 370

Movement_370: @ 370
	MoveRightFast 0x1
	EndMovement 0x0
@ 378

Movement_378: @ 378
	MoveDownFast 0x1
	EndMovement 0x0
@ 380

Movement_380: @ 380
	MoveRightFast 0x1
	EndMovement 0x0
@ 388

Movement_388: @ 388
	Move_3f 0x4
	MoveUpFast 0x1
	Move_3f 0x9
	MoveRightFast 0x1
	EndMovement 0x0
@ 39c

Movement_39c: @ 39c
	MoveDownFast 0x1
	EndMovement 0x0
@ 3a4

.byte 0x21 @ 0x3a4
.byte 0x0 @ 0x3a5
.byte 0x1 @ 0x3a6
.byte 0x0 @ 0x3a7
.byte 0xfe @ 0x3a8
.byte 0x0 @ 0x3a9
.byte 0x0 @ 0x3aa
.byte 0x0 @ 0x3ab
.byte 0x3f @ 0x3ac
.byte 0x0 @ 0x3ad
.byte 0x5 @ 0x3ae
.byte 0x0 @ 0x3af
.byte 0x21 @ 0x3b0
.byte 0x0 @ 0x3b1
.byte 0x1 @ 0x3b2
.byte 0x0 @ 0x3b3
.byte 0x3f @ 0x3b4
.byte 0x0 @ 0x3b5
.byte 0x2 @ 0x3b6
.byte 0x0 @ 0x3b7
.byte 0x23 @ 0x3b8
.byte 0x0 @ 0x3b9
.byte 0x1 @ 0x3ba
.byte 0x0 @ 0x3bb
.byte 0x20 @ 0x3bc
.byte 0x0 @ 0x3bd
.byte 0x1 @ 0x3be
.byte 0x0 @ 0x3bf
.byte 0xfe @ 0x3c0
.byte 0x0 @ 0x3c1
.byte 0x0 @ 0x3c2
.byte 0x0 @ 0x3c3
.byte 0x21 @ 0x3c4
.byte 0x0 @ 0x3c5
.byte 0x1 @ 0x3c6
.byte 0x0 @ 0x3c7
.byte 0xfe @ 0x3c8
.byte 0x0 @ 0x3c9
.byte 0x0 @ 0x3ca
.byte 0x0 @ 0x3cb
.byte 0x3f @ 0x3cc
.byte 0x0 @ 0x3cd
.byte 0x1 @ 0x3ce
.byte 0x0 @ 0x3cf
.byte 0x21 @ 0x3d0
.byte 0x0 @ 0x3d1
.byte 0x1 @ 0x3d2
.byte 0x0 @ 0x3d3
.byte 0xfe @ 0x3d4
.byte 0x0 @ 0x3d5
.byte 0x0 @ 0x3d6
.byte 0x0 @ 0x3d7
.byte 0x3f @ 0x3d8
.byte 0x0 @ 0x3d9
.byte 0x1 @ 0x3da
.byte 0x0 @ 0x3db
.byte 0x23 @ 0x3dc
.byte 0x0 @ 0x3dd
.byte 0x1 @ 0x3de
.byte 0x0 @ 0x3df
.byte 0xfe @ 0x3e0
.byte 0x0 @ 0x3e1
.byte 0x0 @ 0x3e2
.byte 0x0 @ 0x3e3
.byte 0x20 @ 0x3e4
.byte 0x0 @ 0x3e5
.byte 0x1 @ 0x3e6
.byte 0x0 @ 0x3e7
.byte 0xfe @ 0x3e8
.byte 0x0 @ 0x3e9
.byte 0x0 @ 0x3ea
.byte 0x0 @ 0x3eb
.byte 0x3f @ 0x3ec
.byte 0x0 @ 0x3ed
.byte 0x1 @ 0x3ee
.byte 0x0 @ 0x3ef
.byte 0x21 @ 0x3f0
.byte 0x0 @ 0x3f1
.byte 0x1 @ 0x3f2
.byte 0x0 @ 0x3f3
.byte 0xd @ 0x3f4
.byte 0x0 @ 0x3f5
.byte 0x4 @ 0x3f6
.byte 0x0 @ 0x3f7
.byte 0xe @ 0x3f8
.byte 0x0 @ 0x3f9
.byte 0x1 @ 0x3fa
.byte 0x0 @ 0x3fb
.byte 0xd @ 0x3fc
.byte 0x0 @ 0x3fd
.byte 0x6 @ 0x3fe
.byte 0x0 @ 0x3ff
.byte 0x45 @ 0x400
.byte 0x0 @ 0x401
.byte 0x1 @ 0x402
.byte 0x0 @ 0x403
.byte 0xfe @ 0x404
.byte 0x0 @ 0x405
.byte 0x0 @ 0x406
.byte 0x0 @ 0x407
.byte 0x10 @ 0x408
.byte 0x0 @ 0x409
.byte 0x6 @ 0x40a
.byte 0x0 @ 0x40b
.byte 0xfe @ 0x40c
.byte 0x0 @ 0x40d
.byte 0x0 @ 0x40e
.byte 0x0 @ 0x40f
.byte 0x12 @ 0x410
.byte 0x0 @ 0x411
.byte 0x7 @ 0x412
.byte 0x0 @ 0x413
.byte 0xfe @ 0x414
.byte 0x0 @ 0x415
.byte 0x0 @ 0x416
.byte 0x0 @ 0x417

Script_4: @ 418
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0xb8
	CompareLastResultJump 0x1, Script_branch_43d
	SetFlag 0xb8
	SetVarHero 0x0
	Message 0x8
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 43d

Script_branch_43d: @ 43d
	SetVarHero 0x0
	Message 0x9
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 44b

Script_5: @ 44b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckGender 0x800c
	If 0x800c, 0x0
	CompareLastResultJump 0x1, Script_branch_46a
	Jump Script_branch_476
@ 46a

Script_branch_46a: @ 46a
	SetVarHero 0x0
	Message 0xa
	Jump Script_branch_482
@ 476

Script_branch_476: @ 476
	SetVarHero 0x0
	Message 0xb
	Jump Script_branch_482
@ 482

Script_branch_482: @ 482
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 48a

Script_6: @ 48a
	End
@ 48c

Script_7: @ 48c
	End
@ 48e

.byte 0x0 @ 0x48e
.byte 0x0 @ 0x48f

@ end_0x490