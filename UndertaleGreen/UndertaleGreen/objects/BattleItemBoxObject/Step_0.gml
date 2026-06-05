event_inherited();

// Move the soul in relative positions in the menu box
if upKey {
	var newIndex = itemSelected - 2;
	if newIndex < 0 {
		newIndex += 4;
	}
	
	if itemExists(curPage, newIndex) {
		itemSelected = newIndex;
		audio_play_sound(MenuMove, 0, false);
	}
} else if downKey {
	var newIndex = itemSelected + 2;

	if newIndex > 3 {
		newIndex -= 4;
	}
	
	if itemExists(curPage, newIndex) {
		itemSelected = newIndex;
		audio_play_sound(MenuMove, 0, false);
	}
} else if rightKey {
	if itemSelected mod 2 == 1 { // If it's on the top right specifically, Undertale weird.
		var newPage = curPage + 1;
		
		if newPage >= array_length(pages) {
			newPage = 0;
		}
		
		var newIndex = itemSelected - 1;
		
		if itemExists(newPage, newIndex) {
			curPage = newPage;
			itemSelected = newIndex;
			audio_play_sound(MenuMove, 0, false);
		}
	} else {
		var newIndex = itemSelected + 1;
		
		if itemExists(curPage, newIndex) {
			itemSelected = newIndex;
			audio_play_sound(MenuMove, 0, false);
		}
	}
} else if leftKey {
	if itemSelected mod 2 == 0 { // If item selected is on the top left.
		var newPage = curPage - 1;
		
		if newPage < 0 {
			newPage = array_length(pages) - 1;
		}
		
		var newIndex = itemSelected + 1;
		
		if itemExists(newPage, newIndex) {
			curPage = newPage;
			itemSelected = newIndex;
			audio_play_sound(MenuMove, 0, false);
		}
	} else {
		var newIndex = itemSelected - 1;
	
		if itemExists(curPage, newIndex) {
			itemSelected = newIndex;
			audio_play_sound(MenuMove, 0, false);
		}
	}
}

// Correlate the value of itemSelected to the coordinates of selectedX and selectedY
selectedX = itemSelected mod 2;
selectedY = itemSelected div 2;
// Convert those coordinates into world space.
soulX = 77 + (selectedX * 245);
soulY = 286 + (selectedY * 32);

if global.selectButtonPressed {
	audio_play_sound(MenuSelect, 0, false);
}