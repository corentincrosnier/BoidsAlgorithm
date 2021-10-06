/// @description Insert description here
// You can write your code in this editor

R=room_height*3/2;
theta=0;
originX=room_width/2;
originY=room_height/2;
originZ=-room_height/2;

X=originX+R*sin(theta);
Y=originY+R*cos(theta);
Z=originZ-room_height/4;

angular_spd=5;

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

/*
X=room_width/2;
Y=room_height*3/2;
Z=-room_height*2/3;
*/

/*
with(instance_create_layer(0,0,"Instances",Wall)){
	drawn=true;
	x1=0;
	y1=0;
	z1=0;
	x2=world_w;
	y2=0;
	z2=world_z;
	ny=-1;
}
with(instance_create_layer(0,0,"Instances",Wall)){
	drawn=true;
	x1=world_w;
	y1=0;
	z1=0;
	x2=world_w;
	y2=world_h;
	z2=world_z;
	nx=1;
}
with(instance_create_layer(0,0,"Instances",Wall)){
	drawn=true;
	x1=0;
	y1=0;
	z1=0;
	x2=0;
	y2=world_h;
	z2=world_z;
	nx=-1;
}
with(instance_create_layer(0,0,"Instances",Wall)){
	drawn=true;
	x1=0;
	y1=world_h;
	z1=world_z;
	x2=world_w;
	y2=world_h;
	z2=world_z;
	ny=1;
}
*/

