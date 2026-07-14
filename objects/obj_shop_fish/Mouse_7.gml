global.total -= 5;
global.fish_hold++;
layer_text_text(layer_text_get_id("Money","total_text"),"$" + string(global.total));