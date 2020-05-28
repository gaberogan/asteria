var distance = point_distance(x, y, follow.x, follow.y)
var isFarAway = distance >= 1000
var isKindaFar = distance >= 650
var aimDif = angle_difference(point_direction(x, y, follow.x, follow.y), aim)

// Reset animation frame
if (isFarAway && (anim_frame <= 1 || anim_frame >= 100)) anim_frame = 0 // far and not wandering
if (anim_frame >= 180) anim_frame = 0 // loop animation

// Set animation phase
if (anim_frame == 0 || (isKindaFar && phase == 0)) phase = 0 // speed forward, until close
else if (anim_frame < 100) phase = 1 // wander
else phase = 2 // slow to a stop, keep eye on target, blink, fire

// Set speed/rotation per phase
if phase == 0 {
	aim = lerp(aim, aim + aimDif, 0.06)
	speed = 15 // TODO too fast speed change
} else if phase == 1 {
	if (anim_frame >= pickWanderAngle) {
		var angles = [-2, -3, 2, 3]
		wanderAngle = angles[irandom(3)]
		pickWanderAngle = anim_frame + 25 + irandom(25)
	}
	if (anim_frame == 99) pickWanderAngle = 0 // reset
	aim += wanderAngle
	speed = 7
} else if phase == 2 {
	aim = lerp(aim, aim + aimDif, 0.06)
	speed = transform_1d_clamp(anim_frame, 99, 110, 5, 0)
}

// Post calculation
image_angle = aim + 10
direction = aim
spread_species(self, speed / 2)