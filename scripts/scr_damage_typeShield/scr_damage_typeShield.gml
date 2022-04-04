// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_damage_typeShield(_typeShield, _type_hpDamage)
{
	if _typeShield = 0
	{
		scr_damageGuns(_type_hpDamage);
	}
	else
	{
		scr_damageGuns_shields(_type_hpDamage);
	}
}