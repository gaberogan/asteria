// 6 distinct animation frames (off 0/1 on 2/3/4/5)
var frameTicker = floor(global.current_frame * 0.1)
var animFrame = moving ? frameTicker % 4 + 2 : frameTicker % 2
var glowingCore = animFrame >= 2
var engineLevel = animFrame == 5 ? 3 : animFrame

// damage blink
if (hitAgo >= 0 && hitAgo < 12.5) shader_set_fill(1.0, 1.0, 1.0, 1.0)
if (hitAgo >= 25 && hitAgo < 37.5) shader_set_fill(1.0, 1.0, 1.0, 1.0)
if (hitAgo >= 50 && hitAgo < 56.25) shader_set_fill(1.0, 1.0, 1.0, 1.0)
if (hitAgo >= 62.5 && hitAgo < 68.75) shader_set_fill(1.0, 1.0, 1.0, 1.0)
if (hitAgo >= 75 && hitAgo < 81.25) shader_set_fill(1.0, 1.0, 1.0, 1.0)
if (hitAgo >= 87.5 && hitAgo < 93.75) shader_set_fill(1.0, 1.0, 1.0, 1.0)

// 6 ship parts

draw_sprite_ext(sprite_index, glowingCore ? 3 : 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 0, 3
draw_sprite_ext(sprite_index, glowingCore ? 4 : 1, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 1, 4
draw_sprite_ext(sprite_index, glowingCore ? 5 : 2, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 2, 5

shader_reset()

draw_sprite_ext(sprite_index, engineLevel * 3 + 6, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 6, 9, 12, 15, 18
draw_sprite_ext(sprite_index, engineLevel * 3 + 7, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 7, 10, 13, 16, 19
draw_sprite_ext(sprite_index, engineLevel * 3 + 8, x, y, image_xscale, image_yscale, image_angle, c_white, 1) // 8, 11, 14, 17, 20
