// Fire
if global.current_frame % 12 == 0 {
	var ammo = fire_basic(self, oPinger, 0, aim, 0, -27)
	if (ammo != noone) {
		ammo.team = 1
		ammo.speed = 10
	}
}

// Collide (destroy last line to avoid side effects)
if (opp != noone) entity_damage(self, 1)

// Frame track
current_frame += 1