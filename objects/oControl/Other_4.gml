// Create layers
layer_create(-10, "ui")
layer_create(10, "background")

// Spawn environment
instance_create_layer(0, 0, "background", oStarscape)

// Initialize camera
instance_create_layer(room_width / 2, room_height / 2, layer, oCamera)

// Spawn ship
instance_create_layer(room_width / 2, room_height + 200, layer, oPlayer)

// Spawn parameters
global.entity_count = 0
max_entities = 50
entity_pool = [oRock, oKite, oPutter, oGrinder]

repeat 11 entity_spawn_outofview(oRock)
entity_spawn_outofview(oKite)
entity_spawn_outofview(oPutter)
entity_spawn_outofview(oGrinder)