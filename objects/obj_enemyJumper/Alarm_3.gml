new_x = irandom_range(-50, 50);
new_y = irandom_range(-50, 50);

instance_create_layer(x, y - 25, "hud", obj_coinsTakeEffect);
x = x + new_x;
y = y + new_y;
instance_create_layer(x, y - 25, "hud", obj_coinsTakeEffect);
blinking = 0;
alarm[2] = irandom_range(70, 100);
