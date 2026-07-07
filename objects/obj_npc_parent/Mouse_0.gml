if(global.hold_item == customer_order && global.hold_item != ""){
	served = 1;
	global.hold_item = "";
	global.total += 10;
	layer_text_text(layer_text_get_id("Money","total_text"),"$" + string(global.total));
	mood = "happy";
}
else if(global.hold_item != customer_order && global.hold_item != ""){
	served = 1;
	global.hold_item = "";
	mood = "angry";
}