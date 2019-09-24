// Spawn environment
instance_create_layer(0, 0, layer, oStarscape)

// Spawn ship
instance_create_layer(room_width / 2, room_height + 200, layer, oPlayer)

// Initialize camera
instance_create_layer(room_width / 2, room_height / 2, layer, oCamera)

// Spawn parameters
global.entity_count = 0
max_entities = 50
entity_pool = [oRock, oKite, oPutter, oGrinder]

//repeat 4 entity_spawn_outofview(oGrinder)