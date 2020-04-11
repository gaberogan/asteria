/// @description Move + Damage

// Health
objectFrame++
if (opp != noone && objectFrame - lastHitFrame > 60) {
	lastHitFrame = objectFrame
	health--
}

// Input
var up = keyboard_check(ord("W")) ? -pow : 0
var down = keyboard_check(ord("S")) ? pow : 0
var left = keyboard_check(ord("A")) ? -pow : 0
var right = keyboard_check(ord("D")) ? pow : 0

// Set trajectory
var dVert = up + down
var dHorz = left + right
moving = dVert != 0 || dHorz != 0

// Downscale multidirectional trajectory
if dVert != 0 && dHorz != 0 {
	mag = sqrt(2)
	dVert /= mag
	dHorz /= mag
}

// Apply trajectory
vspeed += dVert
hspeed += dHorz

// Clamp trajectory
speed = clamp(speed, -speedLimit, speedLimit)

// Brakes
if !dVert vspeed *= 0.95
if !dHorz hspeed *= 0.95

// Aim
aim = point_direction(x, y, mouse_x, mouse_y)
image_angle = aim - 90
