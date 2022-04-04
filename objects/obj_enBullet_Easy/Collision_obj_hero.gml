repeat (8)
{
	instance_create_layer(x + random_range(-5, 5), y + random_range(-5, 5), "Instances", obj_brokeEffect); //obj_bloodEnemy
}

scr_enemy_bulletAttack // == скрипт попадания пули от противника по гг
( 
	obj_hero,				// объект гг
	obj_gunHero,			// объект оружия гг
	obj_shakeHero,			// объект контроля тряски экрана
	damageCount,			// количество урона
	obj_hero.hero_flashTime	// время белого мерцания при уроне
);
