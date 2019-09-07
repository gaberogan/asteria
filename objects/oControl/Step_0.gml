/// @description Game loop

// Fullscreen
if keyboard_check_pressed(ord("F")) {
	window_set_fullscreen(!window_get_fullscreen())
}

// Increment frame count
global.current_frame++