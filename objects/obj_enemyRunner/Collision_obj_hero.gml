repeat (10)
{
	with(instance_create_layer(x + random_range(-15, 15), y + random_range(-15, 15), "Instances", obj_boomFire))
	{
		image_xscale = 1.5;
		image_yscale = 1.5;
	}
}

if obj_hero.skillShield != 1
{
	obj_hero.heroHp -= damageCount;
	obj_hero.flash = 4;
	obj_gunHero.flash = 4;
}
else
{
	obj_hero.shieldFlash = 4;
	obj_hero.shieldHp -= damageCount;
}
obj_shakeHero.shake_magnitude = obj_shakeHero.shakePower;

instance_destroy();