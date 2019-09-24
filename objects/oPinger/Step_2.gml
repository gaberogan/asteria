if (opp != noone) {
	if explode {
		var splodey = instance_create_layer(x, y, layer, oSplodey)
		splodey.sprite_index = sSplodeyPinger
		splodey.image_xscale = 5
		splodey.image_yscale = 5
	}
	instance_destroy()
}