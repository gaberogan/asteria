var scale = 6
var hp = oPlayer.hp
var healFrames = oPlayer.healFrames
var hitAgoModHeal = oPlayer.hitAgo % healFrames

if (!fullyHealed && hp == oPlayer.maxHp) healAnim = true
fullyHealed = hp == oPlayer.maxHp

// outline

if (healAnim) {
	if (hitAgoModHeal >= 30) healAnim = false
	draw_sprite_part_ext(
	sCosmicCandy,
	21, 0, 0, 23, 32,
	window_get_width() - 200,
	window_get_height() - 200,
	scale, scale, c_white, transform_1d_clamp(hitAgoModHeal, 10, 30, 1, 0))
}

// left

var leftBar = max(0, min(1, hp == 2 ? hitAgoModHeal / healFrames : hp - 2))
draw_sprite_part_ext(
sCosmicCandy,
0, 0, 21 - leftBar * 9, 99, 99,
window_get_width() - 200,
window_get_height() - 200 + scale * 21 - scale * leftBar * 9,
scale, scale, c_white, 1)

// main
draw_sprite_part_ext(
sCosmicCandy,
1, 0, 0, 23, 32,
window_get_width() - 200,
window_get_height() - 200,
scale, scale, c_white, 1)

// right
var rightBar = max(0, min(1, hp == 1 ? hitAgoModHeal / healFrames : hp - 1))
draw_sprite_part_ext(
sCosmicCandy,
2, 0, 21 - rightBar * 9, 99, 99,
window_get_width() - 200,
window_get_height() - 200 + scale * 21 - scale * rightBar * 9,
scale, scale, c_white, 1)