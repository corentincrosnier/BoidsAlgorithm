/// @description Insert description here
// You can write your code in this editor

var i=0;
for(i=0;i<flockSize;i++){
	var theta=random_range(0,pi*2);
	var phi=random_range(0,pi);
	var r=random_range(0,spawnRadius);
	var xx=r*sin(phi)*cos(theta);
	var yy=r*sin(phi)*sin(theta);
	var zz=r*cos(phi);
	
	with(instance_create_depth(mouse_x/room_width*(world_w/zoom)+xx,mouse_y/room_height*(world_h/zoom)+yy,0,obj_bird)){
		z=world_z/zoom/2+zz;
	}
	nbBirds++;
}
