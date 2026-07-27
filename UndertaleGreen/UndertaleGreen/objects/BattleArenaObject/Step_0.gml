if global.hp <=0 { 
	exit; 
}

if battleStart {
	boxWidth -= boxSizeChange;
	changing = true;
	if shieldMode {
		if boxWidth <= shieldBoxLength {
			boxWidth = shieldBoxLength;
			boxHeight -= boxSizeChange;
			if boxHeight <= shieldBoxLength {
				boxHeight = shieldBoxLength;
				changing = false;
			}
		} 
	} else {
		if boxWidth <= boxSmallWidth {
			boxWidth = boxSmallWidth;
			changing = false;
		}
	}
} else {
	instance_destroy(SoulObject);
	instance_destroy(FryingPanObject);
	changing = true;
	boxHeight += boxSizeChange;
	if boxHeight >= boxLargeHeight {
		boxHeight = boxLargeHeight;
		boxWidth += boxSizeChange;
		if boxWidth >= boxLargeWidth {
			boxWidth = boxLargeWidth;
			changing = false;
			instance_destroy();
		}
	} 
}

if !changing {
	global.hp -= 0.01;
}

//show_debug_message(changing);