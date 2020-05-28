// Fire
if global.current_frame % 36 == 0 {
	var ammo = fire_basic(self, oPinger, 0, aim, -12, -27)
	if (ammo != noone) {
		ammo.team = 1
		ammo.speed = 10
	}
}

if global.current_frame % 36 == 18 {
	var ammo = fire_basic(self, oPinger, 0, aim, 14, -27)
	if (ammo != noone) {
		ammo.team = 1
		ammo.speed = 10
	}
}

// Collide (destroy last line to avoid side effects)
if (opp != noone) entity_damage(self, 1)