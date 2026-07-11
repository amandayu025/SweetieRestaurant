if(frame <= 5){
	timer ++;
	if(timer >= timer_max){
		frame++;
		timer = 0;
	}
}
image_index = frame;