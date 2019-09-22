// Collide (last line to avoid side effects)
if (opp != noone) {
	var splodey = instance_create_layer(x, y, layer, oSplodey)
	splodey.sprite_index = sSplodeyPurple
	splodey.image_xscale = 5
	splodey.image_yscale = 5
	audio_play_sound(mSmashRock, 0, false)
	entity_kill(self)
}