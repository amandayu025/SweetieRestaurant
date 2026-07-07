
draw_self();

if(order == 1) draw_text(
    x-20,
    y-20,
    customer_order
);

if(served == 1){
	if(mood == "happy")draw_sprite(spr_mood_happy,self,x-20,y-20);
	else if(mood == "angry")draw_sprite(spr_mood_angry,self,x-20,y-20);
}