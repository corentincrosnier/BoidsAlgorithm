/// @description Insert description here
// You can write your code in this editor

vertex_begin(vBuffer,vFormat);
vertex_add_point(vBuffer,0,0,0,							0,-1,0,		0,0,	colorBack, alphaBack);
vertex_add_point(vBuffer,room_width,0,0,				0,-1,0,		0,0,	colorBack, alphaBack);
vertex_add_point(vBuffer,room_width,0,-room_height,		0,-1,0,		0,0,	colorBack, alphaBack);

vertex_add_point(vBuffer,room_width,0,-room_height,		0,-1,0,		0,0,	colorBack, alphaBack);
vertex_add_point(vBuffer,0,0,-room_height,				0,-1,0,		0,0,	colorBack, alphaBack);
vertex_add_point(vBuffer,0,0,0,							0,-1,0,		0,0,	colorBack, alphaBack);


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

vertex_end(vBuffer);
vertex_submit(vBuffer,pr_trianglelist,-1)