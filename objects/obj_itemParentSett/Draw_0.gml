
draw_sprite_ext(shadowSprite, 0, x, y + add_y, 1, 1, 0, 0, 0.3);	// тень
draw_sprite_ext(sprite_index, 0, x, y + move, 1, 1, 0, c_white, 1);	// основной спрайт

if global.debugMode = 1
{
	draw_circle(x, y - 10, obj_itemContainer.pickupNow / 2, true);
}