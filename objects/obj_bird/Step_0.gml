/// @description Insert description here
// You can write your code in this editor


if(x<0 || y<0 || z<0 || x>world_w/zoom || y>world_h/zoom || z>world_z/zoom){
	instance_destroy(self);
}

var dt=delta_time/1000000;

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
	//var dist=point_distance_3d(other.x,other.y,other.z,x,y,z);
	var dist=magnitude_3d(other.x,other.y,other.z,x,y,z);
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
	var dist1=magnitude_3d(x,y,z,barycenter_x,barycenter_y,barycenter_z);
	//var dir2=point_direction(x,y,barycenter_y,barycenter_z);
	if(dist1!=0){
		x_acc+=((barycenter_x-x)*(cohesionFactor*maneuverability)/dist1)*dt;
		y_acc+=((barycenter_y-y)*(cohesionFactor*maneuverability)/dist1)*dt;
		z_acc+=((barycenter_z-z)*(cohesionFactor*maneuverability)/dist1)*dt;
	}
}


if(nb_align>0){
	align_x/=nb_align;
	align_y/=nb_align;
	align_z/=nb_align;
}
if(nb_align>1){
	//show_debug_message(string(nb_align));
	//var dir=point_direction(0,0,align_x-x_spd,align_y-y_spd);
	//var dir=point_direction(0,0,align_x,align_y);
	var dist2=magnitude_3d(0,0,0,align_x,align_y,align_z);
	//var dist2=magnitude_3d(x_spd,y_spd,z_spd,align_x,align_y,align_z);
	
	//x_acc+=lengthdir_x(alignementFactor*maneuverability,dir)*delta_time/1000000;
	//y_acc+=lengthdir_y(alignementFactor*maneuverability,dir)*delta_time/1000000;
	if(dist2!=0){
		x_acc+=(align_x*(alignementFactor*maneuverability)/dist2)*dt;
		y_acc+=(align_y*(alignementFactor*maneuverability)/dist2)*dt;
		z_acc+=(align_z*(alignementFactor*maneuverability)/dist2)*dt;
	}
}


if(nb_seperation>0){
	seperation_x/=nb_seperation;
	seperation_y/=nb_seperation;
	seperation_z/=nb_seperation;
}
if(nb_seperation>1){
	var dist3=magnitude_3d(x,y,z,seperation_x,seperation_y,seperation_z);
	
	if(dist3!=0){
		x_acc+=((-seperation_x+x)*(seperationFactor*maneuverability)/dist3)*dt;
		y_acc+=((-seperation_y+y)*(seperationFactor*maneuverability)/dist3)*dt;
		z_acc+=((-seperation_z+z)*(seperationFactor*maneuverability)/dist3)*dt;
	}
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
	
var spd=magnitude_3d(0,0,0,x_spd,y_spd,z_spd);
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