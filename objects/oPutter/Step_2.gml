// Fire
if global.current_frame % 60 < 20 {
	var ammo = fire_basic(self, oPinger, fireRate, aim, 0, 11)
	if (ammo != noone) {
		ammo.team = 1
		ammo.speed = 10
	}
}

// Collide (last line to avoid side effects)
if (opp != noone) entity_kill(self)