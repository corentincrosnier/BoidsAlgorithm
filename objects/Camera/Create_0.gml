/// @description Insert description here
// You can write your code in this editor

X=room_width/2;
Y=room_height*3/2;
Z=-room_height*2/3;

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

globalvar vFormat;
globalvar vBuffer;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vFormat=vertex_format_end();
vBuffer=vertex_create_buffer();