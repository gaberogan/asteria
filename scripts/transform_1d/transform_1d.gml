/// @description Apply a 1d space transformation to a point
/// @param value
/// @param domain1
/// @param domain2
/// @param range1
/// @param range2

var value = argument0
var domain1 = argument1
var domain2 = argument2
var range1 = argument3
var range2 = argument4

var amount = (value - domain1) / (domain2 - domain1)
return lerp(range1, range2, amount)