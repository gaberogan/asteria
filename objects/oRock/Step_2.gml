// Collide (last line to avoid side effects)
if (opp != noone) {
	var splodey = instance_create_layer(x, y, layer, oSplodey)
	splodey.sprite_index = sSplodeyRock
	audio_play_sound(mSmashRock, 0, false)
	var ore = entity_spawn(x, y, oOre)
	ore.hue = hue
	entity_kill(self)
}