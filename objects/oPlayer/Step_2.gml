/// @description Fire
if mouse_check_button(mb_left) {
	var ammo = fire_basic(self, oPinger, fireRate, aim, 0, 11)
	if (ammo != noone) ammo.team = 0
}