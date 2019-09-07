camera = camera_create()
follow = oPlayer

var pm = matrix_build_projection_ortho(window_get_width(), window_get_height(), 1, 10000)
camera_set_proj_mat(camera, pm)

view_camera[0] = camera