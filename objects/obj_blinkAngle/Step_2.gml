image_angle = point_direction(x, y, mouse_x, mouse_y);
x = obj_gunHero.x;
y = obj_gunHero.y;


if !place_free(x, y)
{
	sprite_index = spr_blinkAngle_close;
	canBlinkPlace = 0;
}
else
{
	sprite_index = spr_blinkAngle;
	canBlinkPlace = 1;
}