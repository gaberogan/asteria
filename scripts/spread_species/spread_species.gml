/// @description Prevents overlap of same species
/// @param self
/// @param force
function spread_species(argument0, argument1) {

	with argument0 {
		var xx = argument1
		spread_frame = !variable_instance_exists(self, "spread_frame") ? 0 : spread_frame + 1
		spread_dir = spread_frame % 15 == 0 || !variable_instance_exists(self, "spread_dir") ? random(20) - 10 : spread_dir
		spread_force = spread_frame % 15 == 0 || !variable_instance_exists(self, "spread_force") ? random(3) - 1 : spread_force

		direction += spread_dir
		speed += spread_force
	}


}
