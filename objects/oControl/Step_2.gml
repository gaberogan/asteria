/// @description Spawn
if global.entity_count < max_entities && global.current_frame % 200 == 0 {
	var selection = irandom(array_length_1d(entity_pool) - 1)
	entity_spawn_outofview(entity_pool[selection])
	global.entity_count++
}