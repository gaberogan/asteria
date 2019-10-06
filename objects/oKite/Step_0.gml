// Set vars
var dist = point_distance(x, y, follow.x, follow.y)
var targetDir = point_direction(x, y, follow.x, follow.y)
var fleeing = dist < 300
var skew = transform_1d_clamp(dist, 300, 700, 180, 0)

// Modify trajectory to stay away from others
if !fleeing spread_species(self) // TODO

// face target
var aimDif = angle_difference(targetDir, aim)
aim += aimDif
image_angle = aim - 90

// skid
var trajDif = angle_difference(targetDir, trajectory)
trajectory = lerp(trajectory, trajectory + trajDif, 0.015)
direction = trajectory

// final constant speed
speed = 6