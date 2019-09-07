/// @description Prevents overlap of same species
/// @param self
/// @param species
/// @param radius
/// @param speed

with argument0 {
	var species = ds_list_create()
	var numSpecies = collision_circle_list(x, y, argument2, argument1, false, true, species, true)
	if numSpecies > 0 {
		var s = species[| 0]
		var sd = point_direction(s.x, s.y, x, y)
		hspeed += lengthdir_x(argument3, sd)
		vspeed += lengthdir_y(argument3, sd)
	}
}