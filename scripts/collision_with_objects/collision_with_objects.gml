/// @description Returns the first collision with a list of object/team types
/// @param self
/// @param objects
/// @param teams

with argument0 {
	var numObjects = array_length_1d(argument1)
	var i = 0
	for(i = 0; i < numObjects; i++) {
		var inst = instance_place(x, y, argument1[i])
		if inst == noone continue
		with inst {
			if (variable_instance_exists(self, "team") && find_index(argument2, team) != -1) {
				return self
			}
		}
	}

	return noone
}