/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(Font1);
draw_text(10,10,"FPS : "+string(1/(delta_time/1000000)));
draw_text(10,10,"nbBirds : "+string(nbBirds));