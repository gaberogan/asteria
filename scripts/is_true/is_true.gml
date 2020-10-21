/// @description Wrap a object that is outside a rect centered on a point
/// @param object
/// @param property
function is_true(argument0, argument1) {

	var object = argument0
	var property = argument1

	if !variable_instance_exists(object, property) return false
	return variable_instance_get(object, property) == true


}
