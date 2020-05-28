instance_create_layer(x, y, layer, oSplodey)
audio_play_sound(mSmashRock, 0, false)

var relRight = direction - 90
var offsetx = lengthdir_x(35, relRight)
var offsety = lengthdir_y(35, relRight)

var t1 = entity_spawn(x, y, oOneTit)
t1.x = x + offsetx
t1.y = y + offsety
t1.direction = direction
t1.initialPushDir = relRight

var t2 = entity_spawn(x, y, oOneTit)
t2.x = x - offsetx
t2.y = y - offsety
t2.direction = direction
t2.initialPushDir = relRight + 180