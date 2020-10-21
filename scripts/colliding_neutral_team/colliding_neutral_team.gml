/// @description Returns the closest collision from an object to a neutral team object
/// @param self
function colliding_neutral_team(argument0) {

	with (argument0) {
		var objectsToCheck = [oRock, oOre]
		return collision_with_objects(argument0, objectsToCheck, [-1])
	}


}
