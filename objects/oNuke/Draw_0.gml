// one center, 700r
// hex, with order, 200r,
var order = [1, 5, 3 ,0, 4, 2]
draw(sSplodeyNuke, round(objectFrame * 0.3), x, y, 13, 0, "c")
for (i = 0; i < 6; i++) {
	var xx = x + lengthdir_x(250, order[i] * 60)
	var yy = y + lengthdir_y(250, order[i] * 60)
	draw(sSplodeyNuke, round(((objectFrame - 7) - (10 * i)) * 0.5), xx, yy, 4, 0, "c")
}