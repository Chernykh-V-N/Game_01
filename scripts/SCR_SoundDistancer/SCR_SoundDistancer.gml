// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377

function SCR_SoundDistancer(s_emit_, falloff_ref_, falloff_max_)
{

	audio_emitter_position(s_emit_, x, y, 0);
	audio_emitter_falloff(s_emit_, falloff_ref_, falloff_max_, 1);
	audio_falloff_set_model(audio_falloff_linear_distance_clamped);
}
