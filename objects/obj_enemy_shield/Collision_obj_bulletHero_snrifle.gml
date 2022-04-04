chanceOfCrit = irandom(100);

if chanceOfCrit <= obj_hero.chanceOfCrit_count
{
	if shield <= 0
	{
		minusHp = (obj_gunHero.snrifle_hpDamage - ((obj_gunHero.snrifle_hpDamage / 100) * armor)) * obj_hero.powerCrit;
		hp -= minusHp;
		start_colorDamage = c_red;
	}
	else
	{
		minusHp = obj_gunHero.snrifle_shieldDamage * obj_hero.powerCrit;
		shield -= minusHp;
		start_colorDamage = c_red;
	}
	flash = flashTime;
}
else
{
	if shield <= 0
	{
		minusHp = obj_gunHero.snrifle_hpDamage - ((obj_gunHero.snrifle_hpDamage / 100) * armor);
		hp -= minusHp;
		start_colorDamage = c_white;
	}
	else
	{
		minusHp = obj_gunHero.snrifle_shieldDamage;
		shield -= minusHp;
		start_colorDamage = c_orange;
	}
}

with (instance_create_layer(x + random_range(textDamagePos_x - 5, textDamagePos_x + 5), y + random_range(textDamagePos_y - 5, textDamagePos_y + 5), "shadow", obj_damageCount))
{
	textDamage = round(other.minusHp);
	colorDamage = other.start_colorDamage;
}

alarm[0] = 1

//instance_create_layer(x, y - 20, "Instances", obj_gamageText);