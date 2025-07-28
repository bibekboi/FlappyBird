/// @description Insert description here

if (global._IS_ALIVE)
{
	global._IS_ALIVE = false;
	audio_play_sound(snd_player_dead, 0, false);
}


//audio_play_sound(snd_player_dead, 0, false)
//show_debug_message("User Dead");
