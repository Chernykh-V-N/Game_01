/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if collision_rectangle(
x - ((local_width/4) - 16),
y + (local_height/2),
x + (local_width),
y + 50,
obj_hero, true, true)
{
	image_alpha = 0.3;
}
else
{
	image_alpha = 1;
}

draw_self();
