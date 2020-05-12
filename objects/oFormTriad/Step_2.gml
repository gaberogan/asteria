var dist = point_distance(x, y, follow.x, follow.y)
direction = point_direction(x, y, follow.x, follow.y)

var allKilled = spawned // despawn when all are killed
var brokeRadius = breakRadius && dist < breakRadius
var brokeFrame = breakFrame && current_frame >= breakFrame

var i;
for (i = 0; i < array_length_1d(children); i += 1) {

	xx = x + lengthdir_x(radius, 120 * i + direction) // + dir rotates as a whole
	yy = y + lengthdir_y(radius, 120 * i + direction)

	if !spawned { // not spawned
		objs[i] = entity_spawn(xx, yy, children[i])
	} else if instance_exists(objs[i]) { // spawned
		allKilled = false
		objs[i].x = xx
		objs[i].y = yy
		// Make them shoot same direction
		objs[i].disableAim = true
		objs[i].aim = direction
		objs[i].image_angle = direction - 90
		if (brokeRadius || brokeFrame) objs[i].disableAim = false
	} else { // despawned
		// do nothing
	}
}

if (allKilled || brokeRadius || brokeFrame) instance_destroy(self)

spawned = true

current_frame++

// todo jitter fix?