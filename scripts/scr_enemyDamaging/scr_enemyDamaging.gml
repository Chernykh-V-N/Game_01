// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemyDamaging(gun_hpDamage, armor, textPos_x, textPos_y, particlesDamage_obj, colorCrit, colorDefault)
{
	chanceOfCrit = irandom(100);
	if chanceOfCrit <= obj_hero.chanceOfCrit_count
	{
		minusHp = (gun_hpDamage - ((gun_hpDamage / 100) * armor)) * obj_hero.powerCrit;
		hp -= minusHp;
		flash = flashTime;
		start_colorDamage = colorCrit;
	}
	else
	{
		minusHp = gun_hpDamage - ((gun_hpDamage / 100) * armor);
		hp -= minusHp;
		start_colorDamage = colorDefault;
	}

	with (instance_create_layer(x + random_range(textPos_x - 5, textPos_x + 5), y + random_range(textPos_y - 5, textPos_y + 5), "shadow", particlesDamage_obj))
	{
		textDamage = round(other.minusHp);
		colorDamage = other.start_colorDamage;
	}
	
	damageCount_local = minusHp;
}