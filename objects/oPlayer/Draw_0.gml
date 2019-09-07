if (moving) sprite_index = (global.current_frame * 0.1) % 4 + 2
else sprite_index = (global.current_frame * 0.1) % 2

draw_sprite_ext(sCosmicCandy, sprite_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1)