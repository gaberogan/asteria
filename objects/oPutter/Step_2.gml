// Collide
if (opp != noone) instance_destroy()

// Fire
if global.current_frame % 60 < 20 {
	var ammo = fire_basic(self, oPinger, fireRate, aim, 0, 11)
	if (ammo != noone) ammo.team = 1
}