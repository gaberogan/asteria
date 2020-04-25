// Set vars
var targetDir = point_direction(x, y, follow.x, follow.y)

// face target
var aimDif = angle_difference(targetDir, aim)
aim += aimDif
image_angle = aim - 90

// skid
var trajDif = angle_difference(targetDir, trajectory)
trajectory = lerp(trajectory, trajectory + trajDif, 0.015)
direction = trajectory

// Modify trajectory to stay away from others
spread_species(self, 3)

// final constant speed
speed = 6