.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 105, 105, 75, 50, 65, 100, POISON, POISON, 75, 157, ((1)|(1<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NUGGET, 127, 20, 70, 0, EGGGROUP_AMORPHOUS, EGGGROUP_AMORPHOUS, STENCH, STICKY_HOLD, 0, 6, 0, 0xed974e21, 0x82883f6e, 0x824ee00a, 2