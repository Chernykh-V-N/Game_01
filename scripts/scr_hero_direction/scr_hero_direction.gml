// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hero_direction(ukey, dkey, lkey, rkey){
	if ukey and rkey
	{
		dir = 45;
	}
	else if ukey 
	{
		dir = 90;
	}

	if ukey and lkey
	{
		dir = 135;
	}
	else if lkey
	{
		dir = 180;
	}

	if lkey and dkey
	{
		dir = 225;
	}
	else if dkey
	{
		dir = 270;
	}

	if dkey and rkey
	{
		dir = 315;
	}
	else if rkey
	{
		if ukey
		{
			dir = 45;
		}
		else
		{
			dir = 0;
		}
	}
}