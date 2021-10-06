/// @description Insert description here
// You can write your code in this editor

globalvar seperationRadius;
globalvar alignementRadius;
globalvar cohesionRadius;
seperationRadius=8;
alignementRadius=20;
cohesionRadius=60;

globalvar seperationFactor;			//accel to avoid collisions between entities
globalvar alignementFactor;			//accel to match velocity with average
globalvar cohesionFactor;			//acceleration to barycenter
seperationFactor=1;
alignementFactor=0.1;
cohesionFactor=1;

globalvar nbBirds;
nbBirds=0;

flockSize=10;
spawnRadius=10;