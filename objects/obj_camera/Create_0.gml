cam = view_camera[1];
follow = obj_hero;
xTo = xstart;
yTo = ystart;
global.shake = 0;

//это расстояние деактивации объектов
half_visible = 500;

ideal_width = 600;
ideal_height = 0;

speed_cameraFollow = 17;

// создание объектов HUD
instance_create_layer(x, y, "hud", obj_skillM2);
instance_create_layer(x, y, "hud", obj_moneyHUD);
instance_create_layer(x, y, "hud", obj_timerAlive);
instance_create_layer(x, y, "hud", obj_hpHUD);
instance_create_layer(x, y, "hud", obj_tasksHUD);
instance_create_layer(x, y, "hud", obj_itemContainer);
instance_create_layer(x, y, "hud", obj_pause);
instance_create_layer(x, y, "hud", obj_cursor_main);

alarm[0] = 60 * 0.1;
