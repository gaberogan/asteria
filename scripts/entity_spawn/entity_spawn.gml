/// @description Create and raise entity count
/// @param x
/// @param y
/// @param object
function entity_spawn(argument0, argument1, argument2) {

	global.entity_count++
	var instance = instance_create_layer(argument0, argument1, layer, argument2)
	instance.isEntity = true
	return instance


}
