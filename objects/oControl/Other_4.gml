// Spawn environment
instance_create_layer(0, 0, layer, oStarscape)

// Spawn ship
instance_create_layer(room_width / 2, room_height + 200, layer, oPlayer)

// Spawn roids
repeat(4) spawn_nearby(oRock)

// Spawn enemies
repeat(4) spawn_nearby(oPutter)
repeat(4) spawn_nearby(oGrinder)

// Initialize camera
instance_create_layer(room_width / 2, room_height / 2, layer, oCamera)