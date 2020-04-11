/// @description Returns the closest collision from a team object to an enemy team object
/// @param object

with (argument0) {
	if (!variable_instance_exists(self, "team") || team < 0) return noone

	var collisions = ds_list_create()
	var numCollisions = instance_place_list(x, y, all, collisions, true)

	var i = 0
	for(i = 0; i < numCollisions; i++) {
	    with (collisions[| i]) {
			if (variable_instance_exists(self, "team") && team >= 0 && team != other.team) {
				return self
			}
		}
	}

	return noone
}