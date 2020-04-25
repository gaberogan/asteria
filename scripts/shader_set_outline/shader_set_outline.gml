/// @description Wrap a object that is outside a rect centered on a point
/// @param sprite_id
/// @param frame_number

var sprite = argument0
var frame = argument1

shader_set(shOutline)

upixelH = shader_get_uniform(shOutline, "pixelH")
upixelW = shader_get_uniform(shOutline, "pixelW")

texelW = texture_get_texel_width(sprite_get_texture(sprite, frame))
texelH = texture_get_texel_height(sprite_get_texture(sprite, frame))

shader_set_uniform_f(upixelW, texelW)
shader_set_uniform_f(upixelH, texelH)