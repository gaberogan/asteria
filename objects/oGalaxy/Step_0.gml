image_angle += angularVelocity

// Wrap around bounds
var player = oPlayer
if (player != noone) wrap_rect(self, player.x, player.y, 5000, 5000)