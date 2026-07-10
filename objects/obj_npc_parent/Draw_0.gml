
draw_self();

if(order == 1) {
	draw_sprite(spr_ballon,self,x-50,y-60);
	draw_text_colour(x-40,y-60,customer_order,c_black,c_black,c_black,c_black,1);
}
if(served == 1){
	if(mood == "happy")draw_sprite(spr_mood_happy,self,x-22,y-35);
	else if(mood == "angry")draw_sprite(spr_mood_angry,self,x-22,y-35);
}