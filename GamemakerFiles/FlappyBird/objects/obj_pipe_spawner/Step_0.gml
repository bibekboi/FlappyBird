/// @description Insert description here

spawn_timer += 1;

if (spawn_timer > spawn_delay)
{
	spawn_timer = 0;
	
	var pipe_y = irandom_range(60, room_height - 60 - pipe_gap); 
	
	instance_create_layer(0, 0, "Instances", obj_pi)
	
	// Create top pipe
	instance_create_layer(room_width, pipe_y - sprite_height, "Instances", obj_pipe_bottom);
	
	// Create bottom pipe
	instance_create_layer(room_width, pipe_y + pipe_gap, "Instances", obj_pipe_bottom)
}




