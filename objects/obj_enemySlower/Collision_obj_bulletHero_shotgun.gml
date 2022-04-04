
if obj_itemContainer.armReduction > 100
{
	minusArm = 100;
}
else
{
	minusArm = obj_itemContainer.armReduction;
}

scr_enemyShieldDamaging		// == скрипт урона по противнику c щитами ==
(
	obj_gunHero.shotgun_hpDamage,		// значение урона оружия
	armor - ((armor / 100) * minusArm), // количество армора у противника
	textDamagePos_x,				// x для отображения значения урона
	textDamagePos_y,				// y для отображения значения урона
	obj_damageCount,				// объект партикла урона
	c_red,							// цвет критического урона
	c_orange						// цвет стандартного урона
);

//вампиризм от пуль
obj_hero.heroHp += (obj_gunHero.shotgun_hpDamage / 100) * obj_itemContainer.lifesteal_Plus;

alarm[0] = 1;