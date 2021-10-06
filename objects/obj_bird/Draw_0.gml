/// @description Insert description here
// You can write your code in this editor

/*
draw_set_color(c_aqua);
draw_circle(x/world_w*room_width,y/world_h*room_height,5,false);
*/

var _x=x/(world_w/zoom)*room_width;
var _y=y/(world_h/zoom)*room_height;
var _z=z/(world_z/zoom)*room_height;

vertex_begin(vBuffer,vFormat);
vertex_add_point(vBuffer,_x,_y,-_z,		0,0,1,		0,0,	c_aqua,1);
vertex_add_point(vBuffer,_x-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10+7,_y+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-_z,	0,0,1,		0,0,	c_navy,1);
vertex_add_point(vBuffer,_x-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10-7,_y+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-_z,	0,0,1,		0,0,	c_navy,1);

vertex_add_point(vBuffer,_x,_y,-_z,		0,0,1,		0,0,	c_aqua,1);
vertex_add_point(vBuffer,_x-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10+7,_y+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-_z,	0,0,1,		0,0,	c_navy,1);
vertex_add_point(vBuffer,_x-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10,_y+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-_z+7,	0,0,1,		0,0,	c_navy,1);

vertex_add_point(vBuffer,_x,_y,-_z,		0,0,1,		0,0,	c_aqua,1);
vertex_add_point(vBuffer,_x-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10,_y+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-_z+7,	0,0,1,		0,0,	c_navy,1);
vertex_add_point(vBuffer,_x-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10-7,_y+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-_z,	0,0,1,		0,0,	c_navy,1);

vertex_add_point(vBuffer,_x-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10+7,_y+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-_z,	0,0,1,		0,0,	c_navy,1);
vertex_add_point(vBuffer,_x-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10,_y+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-_z+7,	0,0,1,		0,0,	c_navy,1);
vertex_add_point(vBuffer,_x-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10-7,_y+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-_z,	0,0,1,		0,0,	c_navy,1);
vertex_end(vBuffer);

vertex_submit(vBuffer,pr_trianglelist,-1);

if(trailActive){
vertex_begin(vBuffer,vFormat);
var i=0;
for(i=0;i<array_length(trailPoints);i++){
	vertex_add_point(vBuffer,trailPoints[i][0]/(world_w/zoom)*room_width, trailPoints[i][1]/(world_h/zoom)*room_height, -trailPoints[i][2]/(world_z/zoom)*room_height,		0,0,1,		0,0,	make_color_hsv(i*255/trailMaxPoints,150,255), trailAlpha);
	/*if(i>0){
		vertex_add_point(vBuffer,trailPoints[i-1][0]/(world_w/zoom)*room_width, trailPoints[i-1][1]/(world_h/zoom)*room_height, -trailPoints[i-1][2]/(world_z/zoom)*room_height,		0,0,1,		0,0,	make_color_hsv(i*255/trailMaxPoints,150,255), trailAlpha);
	}*/
}
vertex_end(vBuffer);
vertex_submit(vBuffer,pr_linestrip,-1);
}


//draw_sprite_ext(bird,0,x/(world_w/zoom)*room_width,y/(world_h/zoom)*room_height,1,1,(point_direction(0,0,x_spd,y_spd)-90)%360,make_colour_hsv(100, 150, maneuverability*255),1);











