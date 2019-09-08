// Distance to target
var dist = point_distance(x, y, follow.x, follow.y)

// Flee mode
var fleeing = dist < 300

// Set angles
var angDif = angle_difference(aim, point_direction(x, y, follow.x, follow.y))// - (fleeing ? 180 : 0))
aim = aim - sign(angDif) * power(abs(angDif), 0.5) * 0.5
direction = point_direction(x, y, follow.x, follow.y)
image_angle = aim - 90

// Modify trajectory to stay away from other putters
if !fleeing spread_species(self)

// Set speed
if fleeing speed = -2
else if (dist > 500) speed = 2
else speed = 0