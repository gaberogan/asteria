image_angle += angularVelocity

// Wrap around bounds
var player = oPlayer
if (player != noone) {
	if (x - player.x > 2000) x = player.x - 2000 // right
	if (x - player.x < -2000) x = player.x + 2000 // left
	if (y - player.y > 2000) y = player.y - 2000 // bottom
	if (y - player.y < -2000) y = player.y + 2000 // top
}