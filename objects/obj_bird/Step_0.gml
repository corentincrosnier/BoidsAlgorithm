/// @description Insert description here
// You can write your code in this editor

var barycenter_x=0;
var barycenter_y=0;
var barycenter_z=0;
var nb_bary=0;

var align_x=0;
var align_y=0;
var align_z=0;
var nb_align=0;

var seperation_x=0;
var seperation_y=0;
var seperation_z=0;
var nb_seperation=0;

with(obj_bird){
	var dist=point_distance_3d(other.x,other.y,other.z,x,y,z);
	if(dist<cohesionRadius){
		nb_bary++;
		barycenter_x+=x;
		barycenter_y+=y;
		barycenter_z+=z;
	}
	if(dist<alignementRadius){
		nb_align++;
		align_x+=x_spd;
		align_y+=y_spd;
		align_z+=z_spd;
	}
	if(id!=other.id){
		if(dist<seperationRadius){
			nb_seperation++;
			seperation_x+=x;
			seperation_y+=y;
			seperation_z+=z;
		}
	}
}


if(nb_bary>0){
	barycenter_x/=nb_bary;
	barycenter_y/=nb_bary;
	barycenter_z/=nb_bary;
}
if(nb_bary>1){
	var dir=point_direction(x,y,barycenter_x,barycenter_y);
	var dist=point_distance_3d(x,y,z,barycenter_x,barycenter_y,barycenter_z);
	//var dir2=point_direction(x,y,barycenter_y,barycenter_z);
	x_acc+=lengthdir_x(cohesionFactor*maneuverability,dir)*delta_time/1000000;
	y_acc+=lengthdir_y(cohesionFactor*maneuverability,dir)*delta_time/1000000;
	z_acc+=((barycenter_z-z)*(cohesionFactor*maneuverability)/dist)*delta_time/1000000;
}


if(nb_align>0){
	align_x/=nb_align;
	align_y/=nb_align;
	align_z/=nb_align;
}
if(nb_align>1){
	//show_debug_message(string(nb_align));
	//var dir=point_direction(0,0,align_x-x_spd,align_y-y_spd);
	var dir=point_direction(0,0,align_x,align_y);
	var dist=point_distance_3d(0,0,0,align_x,align_y,align_z);
	//x_spd=lerp(x_spd,align_x,alignementFactor1);
	//y_spd=lerp(y_spd,align_y,alignementFactor1);
	x_acc+=lengthdir_x(alignementFactor*maneuverability,dir)*delta_time/1000000;
	y_acc+=lengthdir_y(alignementFactor*maneuverability,dir)*delta_time/1000000;
	z_acc+=(align_z*(alignementFactor*maneuverability)/dist)*delta_time/1000000;
}


if(nb_seperation>0){
	seperation_x/=nb_seperation;
	seperation_y/=nb_seperation;
	seperation_z/=nb_seperation;
}
if(nb_seperation>1){
	var dir=point_direction(x,y,seperation_x,seperation_y);
	var dist=point_distance_3d(x,y,z,seperation_x,seperation_y,seperation_z);
	x_acc+=lengthdir_x(seperationFactor*maneuverability,(dir+180)%360)*delta_time/1000000;
	y_acc+=lengthdir_y(seperationFactor*maneuverability,(dir+180)%360)*delta_time/1000000;
	z_acc+=((seperation_z-z)*(seperationFactor*maneuverability)/dist)*delta_time/1000000;
}

//var dir=point_direction(0,0,x_acc,y_acc);

x_spd+=x_acc;
y_spd+=y_acc;
z_spd+=z_acc;

// no outside room
if(x+x_spd>=(world_w/zoom) || x+x_spd<=0)
	x_spd*=-1;
if(y+y_spd>=(world_h/zoom) || y+y_spd<=0)
	y_spd*=-1;
if(z+z_spd>=(world_z/zoom) || z+z_spd<=0)
	z_spd*=-1;
	
var spd=point_distance_3d(0,0,0,x_spd,y_spd,z_spd);
if(spd>max_spd){
	x_spd*=max_spd/spd;
	y_spd*=max_spd/spd;
	z_spd*=max_spd/spd;
}

x+=x_spd;
y+=y_spd;
z+=z_spd;

x_acc=0;
y_acc=0;
z_acc=0;

//image_angle=point_direction(0,0,x_spd,y_spd);