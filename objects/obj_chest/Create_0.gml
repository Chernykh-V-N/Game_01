image_speed = 0;
image_index = 0;

randomItems = obj_sphereItem; // выборка предметов, которая падает с сундука

global.countOpen = 1; // коэффициент умножения стоимости последующих открытий сундуков
coeffOpenCost = 0.2;
costOfChest = irandom_range(15, 30);
new_costOfChest = costOfChest;

bitmap_font = global.textFont;

local_height = 22;
local_width = 22;

dist_activate = 30;

costDraw = 0;

dist = 30;

pressCreate = 0;
can_create = 1;

opened = 0;

alarm[0] = irandom_range(0, 100);

with (instance_create_layer(x, y + 13, "shadow", obj_staticShadow))
{
	sprite_index = spr_chest_shadow;
	image_index = 2;
	image_speed = 0;
	image_alpha = 0.3;
	image_blend = c_black;
}


scaleResize = 1.0;

textMinusPos_y = -35;
start_colorMinus = #E54444;

move_tick = random_range(0, 100);
move = 0;