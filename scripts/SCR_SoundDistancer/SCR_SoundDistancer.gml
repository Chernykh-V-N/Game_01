// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function SCR_SoundDistancer(s_emit_, Sound_, falloff_factor_, falloff_ref_, falloff_max_, ZaLOOP_)
{
	audio_emitter_position(s_emit_,x,y,0);
	audio_emitter_falloff(s_emit_,falloff_ref_,falloff_max_, 1);
	audio_falloff_set_model(audio_falloff_linear_distance_clamped);
	FlyingSound = audio_play_sound_on(s_emit_ ,Sound_, ZaLOOP_, 3);
}