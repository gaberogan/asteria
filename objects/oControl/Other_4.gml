// TODO debug collisions

// Spawn environment
instance_create_layer(0, 0, layer, oStarscape) // TODO background layer for performance

// Spawn ship
instance_create_layer(room_width / 2, room_height + 200, layer, oPlayer)

// Spawn roids
repeat(8) spawn_nearby(oRock)

// Spawn enemies
repeat(8) spawn_nearby(oPutter)
repeat(8) spawn_nearby(oGrinder)

// Initialize camera
instance_create_layer(room_width / 2, room_height / 2, layer, oCamera)