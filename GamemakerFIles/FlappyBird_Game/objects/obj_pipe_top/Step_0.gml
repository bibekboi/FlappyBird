/// @description Insert description here

x -= pipe_speed;

// Destroy when off screen
if (x < -sprite_width) {
    instance_destroy();
}
