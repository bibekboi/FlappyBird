/// @description Pipe Spawn

spawn_timer += 1;

if(spawn_timer >= spawn_delay)
{
	spawn_timer = 0;
	
	var _pipe_y = irandom_range(60, room_height - 60 - pipe_gap);
	
	// Create top pipe
	instance_create_layer(room_width, _pipe_y - sprite_height, "Instances", obj_pipe_top);
	
	// Create bottom pipe
	instance_create_layer(room_width, _pipe_y + pipe_gap, "Instances", obj_pipe_bottom);
}


