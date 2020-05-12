// Distance and flee mode
var dist = point_distance(x, y, follow.x, follow.y)

// Lerp rotation
var aimDif = angle_difference(point_direction(x, y, follow.x, follow.y), aim)
aim = lerp(aim, aim + aimDif, 0.3)

image_angle = aim + 90
direction = aim

// Modify trajectory to stay away from others
spread_species(self, 2)

// Set speed
if (dist > 350) speed = 4
else speed = 0