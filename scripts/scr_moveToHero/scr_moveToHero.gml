// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_moveToHero(following_obj, speedFollow)
{
	if instance_exists(following_obj)
	{
		mp_potential_step(following_obj.x, following_obj.y, speedFollow, false);
	}
}