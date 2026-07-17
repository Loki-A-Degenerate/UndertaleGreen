if global.hp <=0 { 
	exit; 
}

if battleStart {
	boxWidth -= boxSizeChange;
	changing = true;
	if boxWidth <= boxSmallWidth {
		boxWidth = boxSmallWidth;
		changing = false;
	}
} else {
	instance_destroy(SoulObject);
	changing = true;
	boxWidth += boxSizeChange;
	if boxWidth >= boxLargeWidth {
		boxWidth = boxLargeWidth;
		changing = false;
		instance_destroy();
	}
}

if !changing {
	global.hp -= 0.01;
}

//show_debug_message(changing);