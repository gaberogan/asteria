/// @description Damage and/or kill entity
/// @param object
/// @param damage

with argument0 {
	hp -= argument1
	if (hp <= 0) entity_kill(self)
}