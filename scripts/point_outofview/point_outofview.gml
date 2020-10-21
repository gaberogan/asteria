/// @param distance
function point_outofview(argument0) {

	var width = window_get_width() + 2 * argument0
	var height = window_get_height() + 2 * argument0
	var topLeftX = camera_get_view_x(view_camera[0]) - width / 2
	var topLeftY = camera_get_view_y(view_camera[0]) - height / 2

	var perimeter = 2 * width + 2 * height
	var selection = irandom(perimeter)
 
	var xCoord = topLeftX
	var yCoord = topLeftY

	if (selection < width) {
		xCoord += selection
	}
	else if (selection < width + height) {
		xCoord += width
		yCoord += selection - width
	}
	else if (selection < width + height + width) {
		toLeft = selection - (width + height)
		xCoord += width - toLeft
		yCoord += height
	}
	else {
		toTop = selection - (width + height + width)
		yCoord += height - toTop
	}

	return [xCoord, yCoord]



}
