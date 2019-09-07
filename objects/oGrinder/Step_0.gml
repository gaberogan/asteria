distance = point_distance(x, y, follow.x, follow.y)
direction = point_direction(x, y, follow.x, follow.y)
image_angle = direction + 90

speed = 2.5
if distance < 90 speed = 0
spread_species(self, oGrinder, 200, 1.5)