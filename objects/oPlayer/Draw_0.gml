// 6 distinct animation frames (off 0/1 on 2/3/4/5)
var frameTicker = global.current_frame * 0.1
var animFrame = floor(moving ? frameTicker % 4 + 2 : frameTicker % 2)
var glowingCore = animFrame == 3 || animFrame == 4
var engineLevel = animFrame == 5 ? 3 : animFrame

// 6 ship parts
draw_sprite_ext(sprite_index, glowingCore ? 3 : 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 0, 3
draw_sprite_ext(sprite_index, glowingCore ? 4 : 1, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 1, 4
draw_sprite_ext(sprite_index, glowingCore ? 5 : 2, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 2, 5
draw_sprite_ext(sprite_index, engineLevel * 3 + 6, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 6, 9, 12, 15, 18
draw_sprite_ext(sprite_index, engineLevel * 3 + 7, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 7, 10, 13, 16, 19
draw_sprite_ext(sprite_index, engineLevel * 3 + 8, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 8, 11, 14, 17, 20
