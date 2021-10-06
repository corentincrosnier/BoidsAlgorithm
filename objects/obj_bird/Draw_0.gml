/// @description Insert description here
// You can write your code in this editor

/*
draw_set_color(c_aqua);
draw_circle(x/world_w*room_width,y/world_h*room_height,5,false);
*/

vertex_begin(vBuffer,vFormat);
vertex_add_point(vBuffer,x/(world_w/zoom)*room_width,y/(world_h/zoom)*room_height,-z/(world_z/zoom)*room_height,		0,0,1,		0,0,	c_aqua,1);
vertex_add_point(vBuffer,x/(world_w/zoom)*room_width-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10+10,y/(world_h/zoom)*room_height+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-z/(world_z/zoom)*room_height,		0,0,1,		0,0,	c_navy,1);
vertex_add_point(vBuffer,x/(world_w/zoom)*room_width-cos(degtorad(point_direction(0,0,x_spd,y_spd)))*10-10,y/(world_h/zoom)*room_height+sin(degtorad(point_direction(0,0,x_spd,y_spd)))*10,-z/(world_z/zoom)*room_height,		0,0,1,		0,0,	c_navy,1);
vertex_end(vBuffer);

vertex_submit(vBuffer,pr_trianglelist,-1);

//draw_sprite_ext(bird,0,x/(world_w/zoom)*room_width,y/(world_h/zoom)*room_height,1,1,(point_direction(0,0,x_spd,y_spd)-90)%360,make_colour_hsv(100, 150, maneuverability*255),1);