.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 120, 70, 120, 85, 75, 130, PSYCHIC, PSYCHIC, 3, 210, ((0)|(0<<2)|(0<<4)|(0<<6)|(0<<8)|(3<<10)), NO_ITEM, NO_ITEM, 254, 120, 100, 5, EGGGROUP_UNDISCOVERED, EGGGROUP_UNDISCOVERED, LEVITATE, CACOPHONY, 0, 2, 0, 0xb43bd628, 0x3109e01, 0xa76312c, 0