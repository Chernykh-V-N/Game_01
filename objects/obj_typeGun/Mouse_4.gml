/// @description 

if global.dark = 0
{
	audio_play_sound(Sound_Click, 2, false);
}

if image_index = 0
{
	image_index = 1;
}
else
{
	image_index = 0;
}