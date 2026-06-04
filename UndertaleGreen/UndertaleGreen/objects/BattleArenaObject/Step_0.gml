if battleStart {
	boxWidth -= boxSizeChange;
	if boxWidth <= boxSmallWidth {
		boxWidth = boxSmallWidth;
	}
} else {
	boxWidth += boxSizeChange;
	if boxWidth >= boxLargeWidth {
		boxWidth = boxLargeWidth;
	}
}