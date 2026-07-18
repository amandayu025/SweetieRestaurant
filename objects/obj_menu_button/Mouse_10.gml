image_alpha = 0.5;
switch (button_id){
	case "fish":
		layer_set_visible("Recipe_fish",true);
		layer_set_visible("Recipe_pasta",false);
		layer_set_visible("Recipe_salad",false);
		layer_set_visible("Recipe_soup",false);
		
		layer_text_text(layer_text_get_id("Recipe_fish","recipe_fish"),string(global.fish_fridge));
		break;
	case "pasta":
		layer_set_visible("Recipe_fish",false);
		layer_set_visible("Recipe_pasta",true);
		layer_set_visible("Recipe_salad",false);
		layer_set_visible("Recipe_soup",false);
		
		layer_text_text(layer_text_get_id("Recipe_pasta","recipe_egg"),string(global.egg_fridge));
		layer_text_text(layer_text_get_id("Recipe_pasta","recipe_tomato"),string(global.tomato_fridge));
		layer_text_text(layer_text_get_id("Recipe_pasta","recipe_flour"),string(global.flour_fridge));	
		break;
	case "salad":
		layer_set_visible("Recipe_fish",false);
		layer_set_visible("Recipe_pasta",false);
		layer_set_visible("Recipe_salad",true);
		layer_set_visible("Recipe_soup",false);
		
		layer_text_text(layer_text_get_id("Recipe_salad","recipe_cucumber"),string(global.cucumber_fridge));
		layer_text_text(layer_text_get_id("Recipe_salad","recipe_lettuce"),string(global.lettuce_fridge));
		layer_text_text(layer_text_get_id("Recipe_salad","recipe_tomato2"),string(global.tomato_fridge));
		break;
	case "soup":
		layer_set_visible("Recipe_fish",false);
		layer_set_visible("Recipe_pasta",false);
		layer_set_visible("Recipe_salad",false);
		layer_set_visible("Recipe_soup",true);
		
		layer_text_text(layer_text_get_id("Recipe_soup","recipe_carrot"),string(global.carrot_fridge));
		layer_text_text(layer_text_get_id("Recipe_soup","recipe_potato"),string(global.potato_fridge));
		break;
}

