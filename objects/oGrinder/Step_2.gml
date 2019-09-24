// Collide (last line to avoid side effects)
if (opp != noone) {
	var splodey = instance_create_layer(x, y, layer, oSplodey)
	splodey.image_xscale = 5
	splodey.image_yscale = 5
	audio_play_sound(mSmashRock, 0, false)
	instance_destroy(shield)
	entity_kill(self)
}