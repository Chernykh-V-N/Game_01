// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pushUp_bullets(pushUp_obj)
{
	for (var i = 0; i < 100; ++i)
	{
		if (!place_meeting(x + i, y, pushUp_obj))
		{
			x += lengthdir_x(1, direction);
			y += lengthdir_y(1, direction);
			break;
		}
		if (!place_meeting(x - i, y, pushUp_obj))
		{
			x += lengthdir_x(1, direction);
			y += lengthdir_y(1, direction);
			break;
		}
		if (!place_meeting(x, y - i, pushUp_obj))
		{
			x += lengthdir_x(1, direction);
			y += lengthdir_y(1, direction);
			break;
		}
		if (!place_meeting(x, y + i, pushUp_obj))
		{
			x += lengthdir_x(1, direction);
			y += lengthdir_y(1, direction);
			break;
		}
		if (!place_meeting(x + i, y - i, pushUp_obj))
		{
			x += lengthdir_x(1, direction);
			y += lengthdir_y(1, direction);
			break;
		}
		if (!place_meeting(x - i, y - i, pushUp_obj))
		{
			x += lengthdir_x(1, direction);
			y += lengthdir_y(1, direction);
			break;
		}
		if (!place_meeting(x + i, y + i, pushUp_obj))
		{
			x += lengthdir_x(1, direction);
			y += lengthdir_y(1, direction);
			break;
		}
		if (!place_meeting(x - i, y + i, pushUp_obj))
		{
			x += lengthdir_x(1, direction);
			y += lengthdir_y(1, direction);
			break;
		}
	}
}