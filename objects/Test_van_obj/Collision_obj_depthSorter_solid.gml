
//выталкивание противников друг из друга

for (var i = 0; i < 1000; ++i)
	{
		if (!place_meeting(x + i, y, obj_depthSorter_solid))
		{
			x += i;
			break;
		}
		if (!place_meeting(x - i, y, obj_depthSorter_solid))
		{
			x -= i;
			break;
		}
		if (!place_meeting(x, y - i, obj_depthSorter_solid))
		{
			y -= i;
			break;
		}
		if (!place_meeting(x, y + i, obj_depthSorter_solid))
		{
			y += i;
			break;
		}
		if (!place_meeting(x + i, y - i, obj_depthSorter_solid))
		{
			x += i;
			y -= i;
			break;
		}
		if (!place_meeting(x - i, y - i, obj_depthSorter_solid))
		{
			x -= i;
			y -= i;
			break;
		}
		if (!place_meeting(x + i, y + i, obj_depthSorter_solid))
		{
			x += i;
			y += i;
			break;
		}
		if (!place_meeting(x - i, y + i, obj_depthSorter_solid))
		{
			x -= i;
			y += i;
			break;
		}
	}