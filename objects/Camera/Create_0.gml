/// @description Insert description here
// You can write your code in this editor

X=room_width/2;
Y=room_height*3/2;
Z=-room_height;

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


var x1=400;
var y1=400;
var x2=600;
var y2=600;

/*
vertex_position_3d(vBuffer,room_width,room_height,100);
vertex_normal(vBuffer,0,0,1);
vertex_texcoord(vBuffer,0,0);
vertex_color(vBuffer,c_white,1);
*/
/*
vertex_begin(vBuffer,vFormat);
vertex_add_point(vBuffer,x1,y1,-100,		0,0,1,		0,0,	c_white,1);
vertex_add_point(vBuffer,x2,y1,-100,		0,0,1,		0,0,	c_white,1);
vertex_add_point(vBuffer,x2,y2,-100,		0,0,1,		0,0,	c_white,1);
vertex_add_point(vBuffer,x2,y2,-100,		0,0,1,		0,0,	c_white,1);
vertex_add_point(vBuffer,x1,y2,-100,		0,0,1,		0,0,	c_white,1);
vertex_add_point(vBuffer,x1,y1,-100,		0,0,1,		0,0,	c_white,1);
vertex_end(vBuffer);
*/

/*
vertex_position_3d(vBuffer,room_width/2,room_height/2,100);
vertex_normal(vBuffer,0,0,1);
vertex_texcoord(vBuffer,0,0);
vertex_color(vBuffer,c_white,1);
*/
