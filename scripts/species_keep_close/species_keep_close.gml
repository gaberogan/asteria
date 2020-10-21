/// @description Keep close to same species
/// @param self
/// @param radius
function species_keep_close(argument0, argument1) {

	var o1 = argument0
	var radius = argument1

	var o2 = species_nearest(o1, 2.5 * radius)
	if (!o2) return;

	var dir = point_direction(o1.x, o1.y, o2.x, o2.y)
	var dist = point_direction(o1.x, o1.y, o2.x, o2.y)

	var force
	if (dist < radius) force = transform_1d_clamp(dist, radius, 0.5 * radius, 3, 0)
	else if (dist < 2 * radius) force = transform_1d_clamp(dist, radius, 2 * radius, 3, 6)
	else force = transform_1d_clamp(dist, 2 * radius, 2.5 * radius, 6, 0)

	hspeed += lengthdir_x(force, dir)
	vspeed += lengthdir_y(force, dir)



}
