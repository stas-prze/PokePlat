.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_3c 0x4c
	Cmd_34 0xa, 0x7, 0x35, 0x100000
	Cmd_12 0x114, 0x2, 0x7
	Cmd_e
	Cmd_1e 0x1e
	end
@ 3c

@ end_0x3c