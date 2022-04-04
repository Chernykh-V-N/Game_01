if obj_hero.heroHp > obj_hero.maxHeroHp
{
	obj_hero.heroHp = obj_hero.maxHeroHp;
}

obj_hero.upLvlExp = round(obj_hero.upLvlExp_Start * (obj_hero.coeffExp_Start * obj_hero.coeffExp_Start));

if obj_hero.heroExp >= obj_hero.upLvlExp
{
	obj_hero.heroLvl += 1;
	obj_hero.coeffExp_Start = 1 + ((obj_hero.heroLvl * 3) / obj_hero.upLvlExp_Start);
	obj_hero.heroExp = 0;
}