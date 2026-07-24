if(global.total >= 2){
	global.total -= 2;
	global.egg_hold++;
	layer_text_text(layer_text_get_id("Money","total_text"),"$" + string(global.total));
}
else{
	enought_money = false;
	timer = 0;
}