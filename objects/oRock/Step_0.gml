image_angle += angularVelocity

if (opp != noone) {
	var i
	for (i = 1; i < 8 ; i++) {
		with instance_create_layer(x, y, layer, oRockFrag) {
			image_index = i
			direction = random_range(0, 360)
		}
	}
}