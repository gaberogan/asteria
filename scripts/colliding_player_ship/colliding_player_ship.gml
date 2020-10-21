/// @description Test for collision with player ship, returns ship or noone
/// @param object
function colliding_player_ship(argument0) {

	with argument0 {
		return instance_place(x, y, oPlayer)
	}


}
