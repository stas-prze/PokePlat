.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_3a 0x11, 0x1, 0x2b, 0x9
	Cmd_32 0xc, Var_0x9, 0x5
	Cmd_a2 0x1, 0x4, Script_branch_44
	Cmd_39 Add, Var_0x17, Var_0x9
Script_branch_44: @ 44
	Cmd_12 0x332, 0x0
	Cmd_e
@ 54


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000048.bin", 0x54, 0x60 - 0x54


@ end_0x60
