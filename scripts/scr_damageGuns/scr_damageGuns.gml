// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_damageGuns(_type_hpDamage)
{
		if obj_itemContainer.armReduction > 100
		{
			minusArm = 100;
		}
		else
		{
			minusArm = obj_itemContainer.armReduction;
		}
		
		scr_enemyDamaging		// == скрипт урона по противнику ==
		(
			_type_hpDamage,		// значение урона оружия
			armor - ((armor / 100) * minusArm), // количество армора у противника
			textDamagePos_x,				// x для отображения значения урона
			textDamagePos_y,				// y для отображения значения урона
			obj_damageCount,				// объект партикла урона
			c_red,							// цвет критического урона
			c_white							// цвет стандартного урона
		);
		//вампиризм от пуль
		obj_hero.heroHp += (_type_hpDamage / 100) * obj_itemContainer.lifesteal_Plus;
		
		alarm[0] = 1;
}