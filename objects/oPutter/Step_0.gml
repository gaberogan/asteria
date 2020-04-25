// Distance and flee mode
var dist = point_distance(x, y, follow.x, follow.y)
var fleeing = dist < 300

// Lerp rotation
var aimDif = angle_difference(point_direction(x, y, follow.x, follow.y), aim)
aim = lerp(aim, aim + aimDif, 0.3)

image_angle = aim - 90
direction = aim

// Modify trajectory to stay away from others
if !fleeing spread_species(self, 2)

// Set speed
if fleeing speed = -4
else if (dist > 500) speed = 4
else speed = 0