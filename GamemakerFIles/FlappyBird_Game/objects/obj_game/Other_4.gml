/// @description To do when game starts
if(obj_bird._IS_ALIVE)
{
	audio_play_sound(snd_game_music, 0, true);
}
else
{
	audio_stop_sound(snd_game_music);
}