image_speed = 0.4;
percentItems = irandom_range(0, 100);

scr_sphere_dropChance // == скрипт выпадения рандомной сферы ==
(
	percentItems,		// переменная шанса
	5,					// шанс дропа героик сферы
	1,					// значение героик сферы для рандома предметов
	
	spr_sphereItems_1,	// спрайт героик сферы
	20,					// шанс дропа редкой сферы
	2,					// значение редкой сферы для рандома предметов
	
	spr_sphereItems_2,	// спрайт редкой сферы
	75,					// шанс дропа обычной сферы
	3,					// значение обычной сферы для рандома предметов
	spr_sphereItems_3	// спрайт обычной сферы
);

image_index = irandom_range(0, 10);

shadowSprite = spr_shadow;
add_y = 0;

move_tick = random_range(0, 100);
move = 0;