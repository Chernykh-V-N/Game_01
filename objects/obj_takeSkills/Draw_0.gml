draw_set_font(global.textFont);
draw_set_halign(fa_center);

if selectSkill = 1
{
	draw_text(x + 1, y + minusName, "BLINK");
	draw_sprite(spr_takeSkills, 0, x, y);
	draw_sprite(spr_arrow, 1, x + (minusArrow / 3.5), y - minusArrow);
	draw_sprite(spr_arrow, 2, x - (minusArrow / 3.5), y - minusArrow);
	textDescr = "> TELEPORT \n  FOR \n  SMALL \n  DISTANCES";

}
if selectSkill = 2
{
	draw_text(x + 1, y + minusName, "INJECTION");
	draw_sprite(spr_takeSkills, 1, x, y);
	draw_sprite(spr_arrow, 0, x + (minusArrow / 3.5), y - minusArrow);
	draw_sprite(spr_arrow, 2, x - (minusArrow / 3.5), y - minusArrow);
	textDescr = "> CHARACTER \n  HEALTH \n  RESTORATION";
}
if selectSkill = 3
{
	draw_text(x + 1, y + minusName, "TURRET");
	draw_sprite(spr_takeSkills, 2, x, y);
	draw_sprite(spr_arrow, 0, x + (minusArrow / 3.5), y - minusArrow);
	draw_sprite(spr_arrow, 2, x - (minusArrow / 3.5), y - minusArrow);
	textDescr = "> TURRET \n  SHOOTING \n  AT \n  OPPS";
}
if selectSkill = 4
{
	draw_text(x + 1, y + minusName, "SHIELD");
	draw_sprite(spr_takeSkills, 3, x, y);
	draw_sprite(spr_arrow, 0, x + (minusArrow / 3.5), y - minusArrow);
	draw_sprite(spr_arrow, 3, x - (minusArrow / 3.5), y - minusArrow);
	textDescr = "> SHIELD \n  PROTECTING \n  AGAINST \n  DAMAGE";
}

draw_set_halign(fa_left);

draw_set_color(colorText);
draw_text(x + minusText_x - 4, y + minusText_y + forText_y, textDescr);

draw_set_color(c_white);

if point_in_rectangle(mouse_x, mouse_y,
(x - (minusArrow / 3.5)) - 5,
(y - minusArrow) - 5,
(x - (minusArrow / 3.5)) + 5,
(y - minusArrow) + 5
)
{
	if mouse_check_button_pressed(mb_left)
	{
		if selectSkill < maxSkills
		{
			selectSkill += 1;
		}
	}
}

if point_in_rectangle(mouse_x, mouse_y,
(x + (minusArrow / 3.5)) - 5,
(y - minusArrow) - 5,
(x + (minusArrow / 3.5)) + 5,
(y - minusArrow) + 5
)
{
	if mouse_check_button_pressed(mb_left)
	{
		if selectSkill > 1
		{
			selectSkill -= 1;
		}
	}
}

