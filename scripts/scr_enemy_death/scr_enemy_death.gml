// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_enemy_death(_spriteObj, _money_Obj, _count_money, _exp_Obj, _count_exp, _rangeDrop, _brokeEff_Obj, _destroyEff_Obj, _destroyEff_count, _range_destroyEff)
{
	instance_destroy();
	repeat (_count_exp) // выпадает опыт
	{
		instance_create_layer(x + random_range(-1 * _rangeDrop, _rangeDrop), y + random_range(-1 * _rangeDrop, _rangeDrop), "Instances", _exp_Obj);
	}
	repeat (_destroyEff_count) // эффект "сломался"
	{
		instance_create_layer(x + random_range(-1 * _range_destroyEff, _range_destroyEff), y + random_range(-1 * _range_destroyEff, _range_destroyEff), "Instances", _brokeEff_Obj);
		with (instance_create_layer(x + random_range(-1 * _range_destroyEff, _range_destroyEff), y + random_range(-1 * _range_destroyEff, _range_destroyEff), "Instances", _destroyEff_Obj))
		{
			spr_obj = _spriteObj;
			spr_x = irandom_range(0, 21);
			spr_y = irandom_range(0, 32);
			spr_w = irandom_range(13, 20);
			spr_h = spr_w;
		}
	}
	repeat (_count_money) // выпадают деньги
	{
		instance_create_layer(x + irandom_range(-1 * _rangeDrop, _rangeDrop), y + irandom_range(-1 * _rangeDrop, _rangeDrop), "Instances", _money_Obj);
	}
}