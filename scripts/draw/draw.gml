/// @description Better draw sprite
/// @param sprite
/// @param subimg
/// @param x
/// @param y
/// @param scale
/// @param rot
/// @param mode
function draw(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	var sprite = argument0
	var subimg = argument1
	var xx = argument2
	var yy = argument3
	var scale = argument4
	var rot = argument5
	var mode = argument6



	if mode == "c" {
		if subimg >= 0 && subimg < sprite_get_number(sprite) {
			draw_sprite_ext(sprite, subimg, xx, yy, scale, scale, rot, c_white, 1)
		}
	}

	else {
		draw_sprite_ext(sprite, subimg, xx, yy, scale, scale, rot, c_white, 1)
	}


}
