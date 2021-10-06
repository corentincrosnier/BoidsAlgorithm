/// @description Insert description here
// You can write your code in this editor

with(Wall){
	if(dot_product_3d_normalized(other.X-other.originX,other.Y-other.originY,other.Z-other.originZ,nx,ny,nz)>0){
		drawn=false;
	}
	else
		drawn=true;
}