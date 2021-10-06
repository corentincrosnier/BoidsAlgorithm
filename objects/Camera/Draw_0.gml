/// @description Insert description here
// You can write your code in this editor

var camera=camera_get_active();
camera_set_view_mat(camera,matrix_build_lookat(X,Y,Z,X,0,0,0,0,1));
camera_set_proj_mat(camera,matrix_build_projection_perspective_fov(95,window_get_width()/window_get_height(),1,32000));
camera_apply(camera);

