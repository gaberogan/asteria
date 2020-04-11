if (follow != noone) {
	x += (follow.x - x) / 40
	y += (follow.y - y) / 40
}

var vm = matrix_build_lookat(x, y, -1000, x, y, 0, 0, 1, 0)
camera_set_view_mat(camera, vm)