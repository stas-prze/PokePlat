.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_1e
	Cmd_f
	Cmd_12 0x33b, 0x2, 0x1
	Cmd_e
@ 1c


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000257.bin", 0x1c, 0x50 - 0x1c


@ end_0x50
