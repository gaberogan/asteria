if (moving) image_index = (global.current_frame * 0.1) % 4 + 2
else image_index = (global.current_frame * 0.1) % 2

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)