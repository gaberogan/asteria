var dist = point_distance(x, y, follow.x, follow.y)
direction = point_direction(x, y, follow.x, follow.y)

var shouldDespawn = spawned // despawn when all are killed

var i;
for (i = 0; i < array_length_1d(children); i += 1) {

	xx = x + lengthdir_x(radius, 120 * i)
	yy = y + lengthdir_y(radius, 120 * i)

	if !spawned { // not spawned
		objs[i] = entity_spawn(xx, yy, children[i])
	} else if instance_exists(objs[i]) { // spawned
		shouldDespawn = false
		objs[i].x = xx
		objs[i].y = yy
	} else { // despawned
		// do nothing
	}
}

if (shouldDespawn) instance_destroy(self)
if (breakRadius && dist < breakRadius) instance_destroy(self)
if (breakFrame && current_frame >= breakFrame) instance_destroy(self)

spawned = true

current_frame++

// todo jitter fix?