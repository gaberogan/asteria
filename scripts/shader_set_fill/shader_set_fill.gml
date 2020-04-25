/// @description Wrap a object that is outside a rect centered on a point
/// @param r
/// @param g
/// @param b
/// @param a

var r = argument0
var g = argument1
var b = argument2
var a = argument3

shader_set(shFill)

uColour = shader_get_uniform(shFill, "Colour")

shader_set_uniform_f(uColour, r, g, b, a)
