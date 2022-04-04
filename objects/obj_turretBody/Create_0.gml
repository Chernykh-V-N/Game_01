instance_create_layer(x, y - 10, "Instances", obj_turretFire);

timeToWork = 600;

alarm[0] = timeToWork; // time of workin the turret

instance_create_layer(x, y, "hud", obj_barTimeTurret);