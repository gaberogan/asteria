/// @description Keep away from same species
/// @param self
/// @param radius

var o1 = argument0
var radius = argument1

var o2 = species_nearest(o1, 1.5 * radius)
if (!o2) return;

var dir = point_direction(o2.x, o2.y, o1.x, o1.y)
var dist = point_direction(o2.x, o2.y, o1.x, o1.y)

var force
if (dist < radius) force = transform_1d_clamp(dist, 0, radius, 6, 3)
else force = transform_1d_clamp(dist, radius, 1.5 * radius, 3, 0)

hspeed += lengthdir_x(force, dir)
vspeed += lengthdir_y(force, dir)
