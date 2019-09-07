frame++

if frame == 6 instance_destroy()

var scale = max(3 - frame * 0.3, 0)
image_xscale = scale
image_yscale = scale