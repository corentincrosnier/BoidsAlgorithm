/// @description Insert description here
// You can write your code in this editor

globalvar world_w;
globalvar world_h;
globalvar world_z;

globalvar worldOriginX;
globalvar worldOriginY;
globalvar worldOriginZ;
/*
worldOriginX=room_width/2;
worldOriginY=room_height/2;
worldOriginZ=room_height/2;
*/
/*
world_w=room_width/10;
world_h=room_height/10;
world_z=room_height/10;
*/

world_w=90;
world_h=90;
world_z=90;


globalvar zoom;
zoom=1;

randomize();

zoomFactor=1;
minZoom=0.01;
maxZoom=10;