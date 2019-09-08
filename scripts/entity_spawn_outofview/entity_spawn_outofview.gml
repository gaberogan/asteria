/// @param object

var width = window_get_width() + 2 * 150
var height = window_get_height() + 2 * 150
var topLeftX = view_current.x - width / 2
var topLeftY = view_current.y - height / 2

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

return entity_spawn(xCoord, yCoord, argument0)