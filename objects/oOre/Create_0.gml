image_xscale = 4
image_yscale = 4
image_angle = random(360)
direction = random(360)
speed = random_range(0.15, 0.3)

colors = [-0.8, -0.5, 0]
hue = colors[irandom(2)]
hue_uni = shader_get_uniform(shHue, "Position")