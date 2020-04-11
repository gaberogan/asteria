var splodey = instance_create_layer(x, y, layer, oSplodey)
splodey.image_xscale = 4
splodey.image_yscale = 4
audio_play_sound(mSmashRock, 0, false)
instance_destroy(shield)