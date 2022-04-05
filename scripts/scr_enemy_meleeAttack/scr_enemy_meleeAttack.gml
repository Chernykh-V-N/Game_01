// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_enemy_meleeAttack(_hero_Obj, _gun_Obj, _shake_Obj, _alarm, _reloadAttack, _damageCount, _flash, Sound_)
{
	audio_play_sound(Sound_, 2, false);
	
	alarm[_alarm] = _reloadAttack;
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
	enemySpeed = 0;
	canAttack = 0;
}