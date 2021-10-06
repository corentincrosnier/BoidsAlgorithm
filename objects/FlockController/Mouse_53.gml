/// @description Insert description here
// You can write your code in this editor

var i=0;
for(i=0;i<flockSize;i++){
	var theta=random_range(0,360);
	var r=random_range(0,spawnRadius);
	with(instance_create_depth(mouse_x/room_width*(world_w/zoom)+lengthdir_x(r,theta),mouse_y/room_height*(world_h/zoom)+lengthdir_y(r,theta),0,obj_bird)){
		z=world_z/zoom/2+random_range(-other.spawnRadius,other.spawnRadius);
	}
}
