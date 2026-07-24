draw_self();
if(!enought_money && timer <= 40 && timer >= 0){
	draw_text_transformed_colour(x-40,y-20,"Not enought money!",0.8,0.8,0,c_red,c_red,c_red,c_red,1);
	timer++;
}
if(timer == 40) timer = -1;