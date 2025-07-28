/// @description Insert description here

if (global._IS_ALIVE)
{
	x -= pipe_speed;
}

// Destroy when off screen
if (x < -sprite_width) {
    instance_destroy();
}
