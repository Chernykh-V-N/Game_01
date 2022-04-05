
scr_enemyGeneralDraw // == отрисовка основных элементов ==
(
	1, spr_shadow, 0, -2,	// отрисовка тени (active, sprite, x, y)
	1,						// отрисовка себя
	2						// отрисовка хп (1 - обычный, 2 - с щитом)
);
scr_drawIconBuff(shield);	// отображение иконки баффа щита

scr_flashObj(sh_flashing); // мерцание