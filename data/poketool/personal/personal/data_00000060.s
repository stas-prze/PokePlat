.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 40, 50, 40, 90, 40, 40, WATER, WATER, 255, 77, ((0)|(0<<2)|(0<<4)|(1<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 70, 3, EGGGROUP_WATER1, EGGGROUP_WATER1, WATER_ABSORB, DAMP, 0, 129, 0, 0x9c133264, 0x2003e00, 0x42462000, 4