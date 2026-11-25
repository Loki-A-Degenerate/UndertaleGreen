if playing {
	fadeProgress += fadeSpeed;
	
	if fadeProgress >= 1 {
		fadeProgress = 0;
		colourIndex = (colourIndex + 1) mod array_length(colours);
	}
	
	var currentColour = colours[colourIndex];
	var nextColour = colours[(colourIndex + 1) mod array_length(colours)];
	
	image_blend = merge_colour(currentColour, nextColour, fadeProgress);
} else {
	image_blend = c_white;
	
}
