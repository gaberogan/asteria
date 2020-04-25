objs = [0, 0, 0]

var i;
for (i = 0; i < 3; i += 1) {

	xx = x + lengthdir_x(radius, 120 * i)
	yy = y + lengthdir_y(radius, 120 * i)

	if !spawned { // not spawned
		objs[i] = entity_spawn(xx, yy, children[i])
	} else if objs[i] { // spawned
		objs[i].x = xx
		objs[i].y = yy
	} else { // despawned
		// do nothing
	}

}

spawned = true

// make the formation approach the player
// break apart the formation