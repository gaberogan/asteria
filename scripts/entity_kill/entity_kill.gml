/// @description Destroy and lower entity count
/// @param object
function entity_kill(argument0) {

	instance_destroy(argument0)
	global.entity_count--


}
