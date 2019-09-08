/// @description Aim and fire from sprite position with debounce END STEP
/// @param object
/// @param projectile
/// @param debounce
/// @param direction
/// @param spriteX
/// @param spriteY

with argument0 {
	if !variable_instance_exists(self, "fire_frame") fire_frame = -argument2
	var canFire = global.current_frame - (fire_frame + argument2) > 0
	if canFire {
		fire_frame = global.current_frame
		
		// Spawn position
		var ammoX = x + lengthdir_x(argument4 * image_xscale, image_angle) + lengthdir_x(argument5 * image_yscale, image_angle + 90)
		var ammoY = y + lengthdir_y(argument5 * image_yscale, image_angle + 90) + lengthdir_y(argument4 * image_xscale, image_angle)
		
		// Spawn
		var ammo = instance_create_layer(ammoX, ammoY, layer, argument1) // in End Step to ensure Begin Step exec first
		
		// Set angles
		ammo.direction = argument3
		ammo.image_angle = argument3
		
		return ammo
	}
	return noone
}