// Collide (last line to avoid side effects)
if (opp != noone) {
	var splodey = instance_create_layer(x, y, layer, oSplodey)
	splodey.sprite_index = sSplodeyPurple
	entity_spawn(x, y, oOre)
	entity_kill(self)
}