/// @description Anchor a child object to a parent object
/// @param child
/// @param parent
/// @param x
/// @param y
/// @param rotation
function anchor(argument0, argument1, argument2, argument3, argument4) {

	with argument1 {
		argument0.x = x + lengthdir_x(argument2 * image_xscale, image_angle) + lengthdir_x(argument3 * image_yscale, image_angle + 90)
		argument0.y = y + lengthdir_y(argument3 * image_yscale, image_angle + 90) + lengthdir_y(argument2 * image_xscale, image_angle)
		argument0.image_angle = image_angle + argument4
	}


}
