/// @description Insert description here
// You can write your code in this editor

if(drawn){
	vertex_begin(vBuffer,vFormat);
	var xx1=x1/(world_w/zoom)*room_width;
	var xx2=x2/(world_w/zoom)*room_width;
	var yy1=y1/(world_h/zoom)*room_height;
	var yy2=y2/(world_h/zoom)*room_height;
	var zz1=z1/(world_z/zoom)*room_height;
	var zz2=z2/(world_z/zoom)*room_height;
	vertex_add_point(vBuffer,xx1,yy1,-zz1,			nx,ny,nz,		0,0,	color, alpha);
	vertex_add_point(vBuffer,xx2,yy2,-zz1,			nx,ny,nz,		0,0,	color, alpha);
	vertex_add_point(vBuffer,xx2,yy2,-zz2,			nx,ny,nz,		0,0,	color, alpha);

	vertex_add_point(vBuffer,xx2,yy2,-zz2,			nx,ny,nz,		0,0,	color, alpha);
	vertex_add_point(vBuffer,xx1,yy2,-zz2,			nx,ny,nz,		0,0,	color, alpha);
	vertex_add_point(vBuffer,xx1,yy1,-zz1,			nx,ny,nz,		0,0,	color, alpha);

	vertex_end(vBuffer);
	vertex_submit(vBuffer,pr_trianglelist,-1)
}
/*
//---------------------------------------------------------------------------------------------------
vertex_add_point(vBuffer,0,0,0,							-1,0,0,		0,0,	colorLeft, alphaLeft);
vertex_add_point(vBuffer,0,room_height,0,				-1,0,0,		0,0,	colorLeft, alphaLeft);
vertex_add_point(vBuffer,0,room_height,-room_height,	-1,0,0,		0,0,	colorLeft, alphaLeft);

vertex_add_point(vBuffer,0,room_height,-room_height,	-1,0,0,		0,0,	colorLeft, alphaLeft);
vertex_add_point(vBuffer,0,0,-room_height,				-1,0,0,		0,0,	colorLeft, alphaLeft);
vertex_add_point(vBuffer,0,0,0,							-1,0,0,		0,0,	colorLeft, alphaLeft);


//---------------------------------------------------------------------------------------------------
if(drawFront){
vertex_add_point(vBuffer,0,room_height,0,						0,1,0,		0,0,	colorFront, alphaFront);
vertex_add_point(vBuffer,room_width,room_height,0,				0,1,0,		0,0,	colorFront, alphaFront);
vertex_add_point(vBuffer,room_width,room_height,-room_height,	0,1,0,		0,0,	colorFront, alphaFront);

vertex_add_point(vBuffer,room_width,room_height,-room_height,	0,1,0,		0,0,	colorFront, alphaFront);
vertex_add_point(vBuffer,0,room_height,-room_height,			0,1,0,		0,0,	colorFront, alphaFront);
vertex_add_point(vBuffer,0,room_height,0,						0,1,0,		0,0,	colorFront, alphaFront);
}


//---------------------------------------------------------------------------------------------------
vertex_add_point(vBuffer,room_width,room_height,0,				1,0,0,		0,0,	colorRight, alphaRight);
vertex_add_point(vBuffer,room_width,0,0,						1,0,0,		0,0,	colorRight, alphaRight);
vertex_add_point(vBuffer,room_width,0,-room_height,				1,0,0,		0,0,	colorRight, alphaRight);

vertex_add_point(vBuffer,room_width,0,-room_height,				1,0,0,		0,0,	colorRight, alphaRight);
vertex_add_point(vBuffer,room_width,room_height,-room_height,	1,0,0,		0,0,	colorRight, alphaRight);
vertex_add_point(vBuffer,room_width,room_height,0,				1,0,0,		0,0,	colorRight, alphaRight);
*/