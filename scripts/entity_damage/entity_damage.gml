/// @description Damage and/or kill entity
/// @param object
/// @param damage
function entity_damage(argument0, argument1) {

	with argument0 {
		hp -= argument1
		if (hp <= 0) entity_kill(self)
	}


}
