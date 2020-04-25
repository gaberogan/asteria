/// @description Prevents overlap of same species
/// @param self
/// @param force

with argument0 {
	var colliders = ds_list_create()
	var numCollisions = collision_circle_list(x, y, 200, object_index, false, true, colliders, true)
	if numCollisions > 0 {
		var c = colliders[| 0]
		var dir = point_direction(c.x, c.y, x, y)
		var dist = point_direction(c.x, c.y, x, y)

		var force = transform_1d_clamp(dist, 175, 200, argument1, 0)

		hspeed += lengthdir_x(force, dir)
		vspeed += lengthdir_y(force, dir)
	}
}