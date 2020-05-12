/// @description Draw healthbar
/// @param object

with argument0 {
	var pc;
	pc = (health / max_health) * 100;
	draw_healthbar(x - 50, y - 60, x + 50, y - 40, pc, c_black, c_red, c_lime, 0, true, true)
}