/// @param object

var width = window_get_width()
var height = window_get_height()

var xCoord = view_current.x + irandom_range(-width / 2, width / 2)
var yCoord = view_current.y + irandom_range(-height / 2, height / 2)

return entity_spawn(xCoord, yCoord, argument0)