 /// @description Draw healthbar
/// @param object

with argument0 {
	var pc;
	pc = (hp / maxHp) * 100;
	draw_healthbar(x - 25, y - 47, x + 25, y - 40, pc, c_black, c_red, c_lime, 0, true, true)
}