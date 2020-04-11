/// @description Fire
if mouse_check_button(mb_left) {
	var ammo = fire_basic(self, oPinger, fireRate, aim, 0, 11)
	if (ammo != noone) {
		audio_play_sound(mLaserLight, 0, false)
		ammo.team = 0
	}
}

// Bomb
if keyboard_check(vk_space) && bombCharge >= 10 {
	// bombCharge = 0
	instance_create_layer(x, y, "foreground", oNuke)
}