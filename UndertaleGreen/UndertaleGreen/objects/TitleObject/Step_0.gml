if image_index < 3 {
	if global.selectButtonPressed {
		if file_exists("UndertaleGreenSave.ini") {
			room_goto(SaveRoom);
		} else {
			room_goto(InstructionsRoom);
		}
		alarm[0] = -1;
	}
}