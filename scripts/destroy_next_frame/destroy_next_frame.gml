/// @description Adds object to global.objectsToDestroyEOF, eof = end of frame
/// @param object
with (argument0) {
	if (variable_instance_exists(self, "should_destroy_next_frame") && should_destroy_next_frame == true) {
		instance_destroy()
	}
	else {
		should_destroy_next_frame = true
	}
}