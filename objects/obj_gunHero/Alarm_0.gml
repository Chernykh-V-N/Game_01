/// @description кд дробовик мод

if shotgun_mod_count < shotgun_mod_countMax
{
	shotgun_mod_count += 1;
	alarm[0] = shotgun_mod_kdDelay * (shotgun_mod_kdCoeff + (shotgun_mod_count * shotgun_mod_coeffNumber));
}