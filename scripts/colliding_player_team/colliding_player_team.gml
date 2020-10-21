/// @description Returns the closest collision from an object to a player team object
/// @param self
function colliding_player_team(argument0) {

	with argument0 {
		var objectsToCheck = [oPlayer, oNuke, oPingerPlayer]
		return collision_with_objects(argument0, objectsToCheck, [0])
	}



}
