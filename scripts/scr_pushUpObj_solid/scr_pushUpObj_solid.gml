// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pushUpObj_solid(pushUp_obj)
{
	for (var i = 0; i < 1000; ++i)
	{
		if (!place_meeting(x + i, y, pushUp_obj))
		{
			other.x += i;
			break;
		}
		if (!place_meeting(x - i, y, pushUp_obj))
		{
			other.x -= i;
			break;
		}
		if (!place_meeting(x, y - i, pushUp_obj))
		{
			other.y -= i;
			break;
		}
		if (!place_meeting(x, y + i, pushUp_obj))
		{
			other.y += i;
			break;
		}
		if (!place_meeting(x + i, y - i, pushUp_obj))
		{
			other.x += i;
			other.y -= i;
			break;
		}
		if (!place_meeting(x - i, y - i, pushUp_obj))
		{
			other.x -= i;
			other.y -= i;
			break;
		}
		if (!place_meeting(x + i, y + i, pushUp_obj))
		{
			other.x += i;
			other.y += i;
			break;
		}
		if (!place_meeting(x - i, y + i, pushUp_obj))
		{
			other.x -= i;
			other.y += i;
			break;
		}
	}
}