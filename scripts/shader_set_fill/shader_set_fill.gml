/// @description Wrap a object that is outside a rect centered on a point
/// @param r
/// @param g
/// @param b
/// @param a
function shader_set_fill(argument0, argument1, argument2, argument3) {

	var r = argument0
	var g = argument1
	var b = argument2
	var a = argument3

	shader_set(shFill)

	uColour = shader_get_uniform(shFill, "Colour")

	shader_set_uniform_f(uColour, r, g, b, a)



}
