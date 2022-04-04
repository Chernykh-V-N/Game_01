new_x = irandom_range(-50, 50);
new_y = irandom_range(-50, 50);

/*
//if place_free(x + new_x, y + new_y)
if !collision_rectangle(
x + new_x - 15,
(y - 15) + new_y - 15,
x + new_x + 15,
(y - 15) + new_y + 15,
all, false, true)
{
*/

instance_create_layer(x, y - 25, "hud", obj_coinsTakeEffect);
	//instance_create_layer(x, y - 25, "hud", obj_blinkEffect);
x = x + new_x;
y = y + new_y;
instance_create_layer(x, y - 25, "hud", obj_coinsTakeEffect);
blinking = 0;
alarm[2] = irandom_range(70, 100);

/*
}
else
{
	alarm[3] = 1;
}