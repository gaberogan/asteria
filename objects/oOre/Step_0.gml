// Distance to target
var dist = point_distance(x, y, follow.x, follow.y)

// Magnetic pull to player
var pull = dist < 230

image_angle += 0.2

if oPlayer.bombCharge < 10 {
	if pull {
		direction = point_direction(x, y, follow.x, follow.y)
		speed = power(200, 1.7) / power(dist, 1.7)
	}

	var currScale = clamp(3 * dist / 200, 0, 3)
	image_xscale = currScale
	image_yscale = currScale
} else {
	image_xscale = min(image_xscale + 0.2, scale)
	image_yscale = min(image_xscale + 0.2, scale)
}