objectFrame++

var collisions = ds_list_create()
collision_circle_list(x, y, 400, all, true, true, collisions, false)

// Kill nukeables
for(index = 0; index < ds_list_size(collisions); index++) {
	var item = ds_list_find_value(collisions, index)
	
	// Don't collide twice
	if (ds_list_find_index(collided, item) == -1) ds_list_add(collided, item)
	else continue
	
	// Delete it
	if is_true(item, "isEntity") && !is_true(item, "nukeProof") {
	entity_kill(item)
	}
}


if objectFrame == 70 instance_destroy()