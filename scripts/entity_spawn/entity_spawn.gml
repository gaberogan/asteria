/// @description Create and raise entity count
/// @param x
/// @param y
/// @param object

global.entity_count++
return instance_create_layer(argument0, argument1, layer, argument2)