draw_sprite_ext(spr_buttonKey, 0, x, y, 1, 1, 0, c_white, 1);
scr_textBorder_damageCount(x - 150, y + 6, fnt_costChest, c_white, c_black, "Move Left", 1);
if click = 0
{
	scr_textBorder_damageCount(x + 23, y + 6, fnt_costChest, c_black, c_white, selectNow, 1);
}