.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_12 0x137, 0x2, 0xff
	Cmd_e
@ 14


.incbin "./baserom/data/battle/skill/sub_seq_narc/data_00000240.bin", 0x14, 0x20 - 0x14


@ end_0x20
