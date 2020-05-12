/// @description Damage and/or kill entity
/// @param object
/// @param damage

with argument0 {
	health -= argument1
	if (health <= 0) entity_kill(self)
}