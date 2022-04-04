// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision(objCollision, hsp, vsp)
{
	 if place_meeting(x + hsp, y, objCollision)
	 {
		while !place_meeting(x + sign(hsp), y, objCollision)
		{
			x += sign(hsp);	
		}
		//hsp = 0;
	 }
	 if place_meeting(x, y + vsp, objCollision)
	 {
		while !place_meeting(x, y + sign(vsp), objCollision)
		{
			x += sign(vsp);	
		}
		//vsp = 0;
	 }
}