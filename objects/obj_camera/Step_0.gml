

//деактивация - работает странно, много новых багов
instance_activate_all();
instance_deactivate_region(obj_hero.x - half_visible, obj_hero.y - half_visible, half_visible * 2, half_visible * 2, false, true);