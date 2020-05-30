// Create layers
layer_create(-20, "ui")
layer_create(-10, "foreground")
layer_create(10, "background")

// Spawn environment
instance_create_layer(0, 0, "background", oStarscape)

// Initialize cameradsaaaaaaa
instance_create_layer(room_width / 2, room_height / 2, layer, oCamera)

// Spawn ship
instance_create_layer(room_width / 2, room_height / 2, layer, oPlayer)

// Spawn parameters
global.entity_count = 0
max_entities = 50
entity_pool = [oRock, oKite, oPutter, oGrinder]

entity_spawn_outofview(oRock)
entity_spawn_outofview(oRock)
entity_spawn_outofview(oKite)
entity_spawn_outofview(oPutter)
entity_spawn_outofview(oGrinder)
entity_spawn_outofview(oEyeball)
entity_spawn_outofview(oTwoTit)

var f = instance_create_layer(oPlayer.x + 200, oPlayer + 200, layer, oFormTriad)
f.children = [oKite, oKite, oKite]
f.radius = 80
f.breakFrame = 700