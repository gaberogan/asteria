/// @description Apply a 1d space transformation to a point and clamp the output to the specified range
/// @param value
/// @param domain1
/// @param domain2
/// @param range1
/// @param range2
function transform_1d_clamp(argument0, argument1, argument2, argument3, argument4) {

	var value = argument0
	var domain1 = argument1
	var domain2 = argument2
	var range1 = argument3
	var range2 = argument4

	var output = transform_1d(value, domain1, domain2, range1, range2)

	var inOrder = range1 < range2
	if (inOrder) return clamp(output, range1, range2)
	return clamp(output, range2, range1)


}
