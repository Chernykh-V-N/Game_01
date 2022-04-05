/// @description 

if other.typeBullet = "snrifle_mod"
{
	alarm[11] = 30;
	if firstBullet = 0
	{
		firstBullet = 1;
		scr_damage_typeShield(typeShield, other.type_hpDamage);
	}
}
else
{
	scr_damage_typeShield(typeShield, other.type_hpDamage);
}

damageCount += other.type_hpDamage;
