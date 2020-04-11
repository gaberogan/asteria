var scale = 7

foo = min(1, foo + .01) // 0 to 1

// left
draw_sprite_part_ext(
sCosmicCandy,
0, 0, 18 - foo * 8, 99, 99,
window_get_width() - 200,
window_get_height() - 200 + scale * 18 - scale * foo * 8,
scale, scale, c_white, 1)

// main
draw_sprite_part_ext(
sCosmicCandy,
1, 0, 0, 23, 30,
window_get_width() - 200,
window_get_height() - 200,
scale, scale, c_white, 1)

// right
draw_sprite_part_ext(
sCosmicCandy,
2, 0, 18 - foo * 8, 99, 99,
window_get_width() - 200,
window_get_height() - 200 + scale * 18 - scale * foo * 8,
scale, scale, c_white, 1)