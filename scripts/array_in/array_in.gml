/// @description Test if value is in array
/// @param array
/// @param value
function array_in(argument0, argument1) {

	var array = argument0
	var value = argument1

	for (var i = 0, iLen = array_length_1d(array); i < iLen; i++) {
	   if array[i] == value return true
	}

	return false


}
