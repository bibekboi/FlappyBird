/// @description Check collision

if (!scored && obj_bird._IS_ALIVE) {
    global._user_point += 1;
    scored = true;
    instance_destroy(); // remove the point adder so it doesn't repeat
}
