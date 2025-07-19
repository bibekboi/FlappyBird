/// @description Bird behaviour

if (_IS_ALIVE)
{
	// Check SPACE input
	if (keyboard_check_pressed(vk_space))
	{
		vspeed = _flap_strength; 	
	}


	// Apply Gravity
	vspeed += gravity; 


	// Check for maximum fall speed
	if (vspeed > _max_fall_speed)
	{
		vspeed = _max_fall_speed; 	
	}

	// Make bird jump
	y += vspeed; 

	// Change bird rotation
	image_angle = lerp(image_angle, clamp(vspeed * _rotation_mult, -30, 90), 0.2);
}
else
{
	audio_play_sound(snd_player_dead, 0, false);
	instance_destroy();
	
	/*
	if(!_sound_stop)
	{
		audio_play_sound(snd_player_dead, 0, false);
		_sound_stop = true;
	}
	*/
	return 0;
}