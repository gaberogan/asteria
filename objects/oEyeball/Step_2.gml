// Fire
if (anim_frame == 140) laser = instance_create_layer(0, 0, layer, oLaser)
if instance_exists(laser) {
	var relx = 11
	var rely = 0
	laser.team = 1
	laser.image_angle = aim
	laser.x = x + lengthdir_x(relx * image_xscale, image_angle) + lengthdir_x(rely * image_yscale, image_angle + 90)
	laser.y = y + lengthdir_y(rely * image_yscale, image_angle + 90) + lengthdir_y(relx * image_xscale, image_angle)
}

anim_frame++

// Collide (destroy last line to avoid side effects)
if (opp != noone) entity_damage(self, 1)