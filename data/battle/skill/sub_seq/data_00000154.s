.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_3a 0x11, 0x1, 0x30, 0x20
	Cmd_55 0x20, 0x2
	Cmd_39 0x7, 0x14, 0xf
	Cmd_11
	Cmd_e
	Cmd_3c 0x6f
	JumpIf TstNe, 0xa, 0x80000000, Script_branch_64
	Cmd_91 0x1, 0x6, 0x1
Script_branch_64: @ 64
	end
@ 68

@ end_0x68