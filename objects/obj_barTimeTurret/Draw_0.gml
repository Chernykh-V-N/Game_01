if instance_exists(obj_turretBody)
{
	draw_sprite_part(spr_timeBar, 1, 0, 0, pixW_bar, pixH_bar, realX, realY - constY_barHeight);
	draw_sprite_part(spr_timeBar, 0, 0, 0, pixW_bar * (obj_turretBody.alarm[0] / obj_turretBody.timeToWork), pixH_bar, realX, realY - constY_barHeight);
}