/// @description Returns the closest collision from an object to a neutral team object
/// @param self

with (argument0) {
	var objectsToCheck = [oRock, oOre]
	return collision_with_objects(argument0, objectsToCheck, [-1])
}