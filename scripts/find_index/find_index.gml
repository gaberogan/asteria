/// @description Returns the index of an object in an array that matches a value
/// @param array
/// @param value

var numItems = array_length_1d(argument0)
var i

for(i = 0; i < numItems; i++){
    if(argument0[i] == argument1) return i;
}

return -1;