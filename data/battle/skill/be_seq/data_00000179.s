.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_80 Script_branch_c
	end
@ c

Script_branch_c: @ c
	Cmd_32 Store, Var_0xa, 0x40
	end
@ 20

@ end_0x20
