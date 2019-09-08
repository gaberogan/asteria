/// @description Prevents overlap of same species
/// @param self

with argument0 {
	var species = ds_list_create()
	var numSpecies = collision_circle_list(x, y, 200, object_index, false, true, species, true)
	if numSpecies > 0 {
		var s = species[| 0]
		var sd = point_direction(s.x, s.y, x, y)
		hspeed += lengthdir_x(speed / 2, sd)
		vspeed += lengthdir_y(speed / 2, sd)
	}
}