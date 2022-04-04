view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

if global.shake = 0
{
	if (instance_exists(follow))
	{
		xTo = follow.x;
		yTo = follow.y;
	}

	x += (xTo - x) / speed_cameraFollow;
	y += (yTo - y) / speed_cameraFollow;
}

camera_set_view_pos(cam, x - view_w_half, y - view_h_half)

// шобы турель не помэрала
// турель лайвс меттер!1!!1
instance_activate_object(obj_turretBody);
instance_activate_object(obj_turretFire);
instance_activate_object(obj_barTimeTurret);
