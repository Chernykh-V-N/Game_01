// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pushUpObj(pushUp_obj)
{
	for (var i = 0; i < 100; ++i)
	{
		if (!place_meeting(x + i, y, pushUp_obj))
		{
			x += i;
			break;
		}
		if (!place_meeting(x - i, y, pushUp_obj))
		{
			x -= i;
			break;
		}
		if (!place_meeting(x, y - i, pushUp_obj))
		{
			y -= i;
			break;
		}
		if (!place_meeting(x, y + i, pushUp_obj))
		{
			y += i;
			break;
		}
		if (!place_meeting(x + i, y - i, pushUp_obj))
		{
			x += i;
			y -= i;
			break;
		}
		if (!place_meeting(x - i, y - i, pushUp_obj))
		{
			x -= i;
			y -= i;
			break;
		}
		if (!place_meeting(x + i, y + i, pushUp_obj))
		{
			x += i;
			y += i;
			break;
		}
		if (!place_meeting(x - i, y + i, pushUp_obj))
		{
			x -= i;
			y += i;
			break;
		}
	}
}