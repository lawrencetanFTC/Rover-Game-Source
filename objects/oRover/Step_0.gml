var step = 6
if(keyboard_check_pressed(vk_space)){
	var target = instance_place(x,y,scienceTarget)
	if(target != noone){
		instance_destroy(target)
	}
}
// Move Up 
if (keyboard_check(vk_up) && bbox_top > 0) {
    y -= step;
}
// Move Down )
if (keyboard_check(vk_down) && bbox_bottom < room_height) {
    y += step;
}
// Move Left (check left edge of sprite against 0)
if (keyboard_check(vk_left) && bbox_left > 0) {
    x -= step;
}
// Move Right
if (keyboard_check(vk_right) && bbox_right < room_width) {
    x += step;
}

// Motion fo the rover is controleld by moving the x and y vaolues of the rover using keybinds 
// and then clamping it so i doesnt go out of the edges

// Keep the sprite flush with the room edges 
x = clamp(x, x - bbox_left, room_width - (bbox_right - x));
y = clamp(y, y - bbox_top, room_height - (bbox_bottom - y));