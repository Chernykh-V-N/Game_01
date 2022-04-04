// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_enemy_bulletAttack(_hero_Obj, _gun_Obj, _shake_Obj, _damageCount, _flash)
{
	if _hero_Obj.skillShield != 1
	{
		_hero_Obj.heroHp -= _damageCount;
		_hero_Obj.flash = _flash;
		_gun_Obj.flash = _flash;
	}
	else
	{
		_hero_Obj.shieldFlash = _flash;
		_hero_Obj.shieldHp -= _damageCount;
	}
	_shake_Obj.shake_magnitude = _shake_Obj.shakePower;
	
	instance_destroy();
}
