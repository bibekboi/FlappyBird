/// @description Bird Script goes here.

// Check if dead
if(is_alive)
{
	// Jump Detection
	if(keyboard_check_pressed(vk_space))
	{
		vspeed = flap_strength;
	}

}

// Apply gravity
vspeed += gravity;


//Limiting fall speed
if (vspeed > max_fall_speed)
{
	vspeed = max_fall_speed;	
}

//Bird Jump
y += vspeed;


// Rotate bird based on vertical speed
if(is_alive)
{
	image_angle = lerp(image_angle, clamp(vspeed * 4, -30, 90), 0.2); 
}
else {
	vspeed += gravity; 
	y += vspeed; 
	image_angle = lerp(image_angle, 90, 0.1);
}
