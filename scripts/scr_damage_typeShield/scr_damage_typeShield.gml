// _typeShield	  - тип урона
//				0 - по противникку без щита
//				1 - по противникку с щитом
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
	
	audio_play_sound(Sound_Impact_Enemy, 2, false);
}