/// @description Returns the closest collision from an object to an enemy team object
/// @param self
function colliding_enemy_team(argument0) {

	with (argument0) {
		var inst = instance_place(x, y, all) // NOTE while colliding with non-enemy invincible maybe

		with inst {
			if (variable_instance_exists(self, "team") && team == 1) {
				return self
			}
		}

		return noone
	}


}
