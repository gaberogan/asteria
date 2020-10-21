/// @description Sin wave between 0 and 1
/// @param framesPerWave
function wave(argument0) {

	var oneWavePerFrame = global.current_frame * 2 * pi
	return sin(oneWavePerFrame / argument0) * 0.5 + 0.5


}
