/// @description Fire
var canFire = global.current_frame - (lastFired + fireRate) > 0
if canFire && mouse_check_button(mb_left) {
	lastFired = global.current_frame
	var front = image_xscale * 11
	var ammoX = x + lengthdir_x(front, aim)
	var ammoY = y + lengthdir_y(front, aim)
	var ammo = instance_create_layer(ammoX, ammoY, layer, oPinger) // in End Step to ensure Begin Step exec first
	ammo.direction = aim
	ammo.image_angle = aim
}