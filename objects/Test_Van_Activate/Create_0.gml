image_speed = 0;
image_index = 0;

bitmap_font = global.textFont;

local_height = 22;
local_width = 22;

costDraw = 0;

dist = 30;
dist_activate = 110;

pressCreate = 0;
can_create = 1;

shadow_there = instance_create_layer(x, y + 13, "shadow", obj_staticShadow)
with (shadow_there)
{
	sprite_index = spr_chest_shadow;
	image_index = 2;
	image_speed = 0;
	image_alpha = 0.3;
	image_blend = c_black;
}

scaleResize = 1.0;
textMinusPos_y = -25;


