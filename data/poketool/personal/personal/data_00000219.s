.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 50, 50, 120, 30, 80, 80, FIRE, ROCK, 75, 154, ((0)|(0<<2)|(2<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 20, 70, 0, EGGGROUP_AMORPHOUS, EGGGROUP_AMORPHOUS, MAGMA_ARMOR, FLAME_BODY, 0, 0, 0, 0x8631c620, 0x92021e75, 0x8246aa58, 2