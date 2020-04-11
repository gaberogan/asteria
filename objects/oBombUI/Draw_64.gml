x = 135
y = window_get_height() - 100
draw_self()

// Glow
if image_index == 10 {
	draw_sprite_ext(sprite_index, 11, x, y, image_xscale, image_yscale, image_angle, image_blend, wave(60) * 0.33)
}