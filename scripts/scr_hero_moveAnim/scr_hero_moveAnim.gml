// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_hero_moveAnim(_gun_Obj, _depth, _animSprite, _animSpeed, _animSprite_idle, _animSpeed_idle){
	_gun_Obj.depth = depth + _depth;
	if keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D"))
	{
		image_speed = _animSpeed;
		sprite_index = _animSprite;
	}
	else
	{
		image_speed = _animSpeed_idle;
		sprite_index = _animSprite_idle;
	}
}