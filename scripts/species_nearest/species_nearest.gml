/// @description Find nearest of same species within radius
/// @param self
/// @param radius
function species_nearest(argument0, argument1) {

	with argument0 {
		var colliders = ds_list_create()
		var numCollisions = collision_circle_list(x, y, argument1, object_index, false, true, colliders, true)
		if numCollisions > 0 {
			return colliders[| 0]
		}
	}



}
