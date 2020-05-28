var targetDir = point_direction(x, y, follow.x, follow.y)

// face target
var aimDif = angle_difference(targetDir, aim)
if (!is_true(self, "disableAim")) aim += aimDif
image_angle = aim + 90

// skid
var trajDif = angle_difference(targetDir, trajectory)
trajectory = lerp(trajectory, trajectory + trajDif, 0.015)
direction = trajectory

// Modify trajectory to stay away from others
spread_species(self, 2)

// Set speed (init push vectors vs normal)
if current_frame < 21 {
	var push = 21 - current_frame
	var pushx = lengthdir_x(push, initialPushDir)
	var pushy = lengthdir_y(push, initialPushDir)
	var normx = lengthdir_x(5, direction)
	var normy = lengthdir_y(5, direction)
	var finalx = pushx + normx
	var finaly = pushy + normy
	speed = point_distance(0, 0, finalx, finaly)
	direction = point_direction(0, 0, finalx, finaly)
} else {
	speed = 6
}