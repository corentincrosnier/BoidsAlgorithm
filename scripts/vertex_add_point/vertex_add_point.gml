/// @param vbuffer
/// @param xx
/// @param yy
/// @param zz
/// @param nx
/// @param ny
/// @param nz
/// @param utex
/// @param vtex
/// @param color
/// @param alpha

/*
var vbuffer = argument[0];
var xx = argument[1];
var yy = argument[2];
var zz = argument[3];
var nx = argument[4];
var ny = argument[5];
var nz = argument[6];
var utex = argument[7];
var vtex = argument[8];
var color = argument[9];
var alpha = argument[10];
*/

// Collapse four function calls into a single one
function vertex_add_point(vbuffer,xx,yy,zz,nx,ny,nz,u,v,color,alpha){
	vertex_position_3d(vbuffer, xx, yy, zz);
	vertex_normal(vbuffer, nx, ny, nz);
	vertex_texcoord(vbuffer, u, v);
	vertex_color(vbuffer, color, alpha);
}