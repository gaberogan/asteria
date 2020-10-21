/// @description Wrap a object that is outside a rect centered on a point
/// @param object
/// @param rectX
/// @param rectY
/// @param rectWidth
/// @param rectHeight
function wrap_rect(argument0, argument1, argument2, argument3, argument4) {

	var object = argument0
	var rectX = argument1
	var rectY = argument2
	var rectDX = argument3 / 2
	var rectDY = argument4 / 2

	with object {
		if (x - rectX > rectDX) x = rectX - rectDX // right
		if (x - rectX < -rectDX) x = rectX + rectDX // left
		if (y - rectY > rectDY) y = rectY - rectDY // bottom
		if (y - rectY < -rectDY) y = rectY + rectDY // top
	}


}
