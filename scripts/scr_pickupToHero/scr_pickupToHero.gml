// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pickupToHero(pickupDistance)
{
	if collision_circle(x, y - 10, pickupDistance, obj_hero, false, true)
	{
		//движение за персонажем
		x = lerp(x, obj_hero.x, 0.1);
		y = lerp(y, obj_hero.y, 0.1);
	
		//эффект небольшого увеличения денег при поднятии
		image_xscale = lerp(1, distance_to_object(obj_hero), 0.02);
		image_yscale = lerp(1, distance_to_object(obj_hero), 0.02);
	}
}