.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_32 Store, Var_3, 0x80000008
	Cmd_32 Store, Var_0x8, 0xa
	JumpIfPkmnBattleData TstEq, Target_2, PkmnBattleData_3b, 0x100, Script_branch_48
	Cmd_32 Store, Var_0x8, 0x14
Script_branch_48: @ 48
	Cmd_26
	Cmd_f
	end
@ 54

@ end_0x54
