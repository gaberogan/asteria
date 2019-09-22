team = -1

image_xscale = 3
image_yscale = 3

colors = [-3.2, -2.4, 0]
hue = colors[irandom(2)]
hue_uni = shader_get_uniform(shHue, "Position")

speed  = random_range(0.5, 1.5)
direction = random_range(0, 360)
angularVelocity = random_range(0.25, 0.5)