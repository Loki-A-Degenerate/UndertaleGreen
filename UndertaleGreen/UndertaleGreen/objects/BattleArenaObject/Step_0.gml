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

//show_debug_message(changing);