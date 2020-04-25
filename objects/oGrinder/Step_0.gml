distance = point_distance(x, y, follow.x, follow.y)

// Lerp rotation
var aimDif = angle_difference(point_direction(x, y, follow.x, follow.y), aim)
aim = lerp(aim, aim + aimDif, 0.06)

image_angle = aim + 90
direction = aim

speed = 2.5
if distance < 650 speed = 6
if distance < 105 speed = 0
spread_species(self, speed / 2)