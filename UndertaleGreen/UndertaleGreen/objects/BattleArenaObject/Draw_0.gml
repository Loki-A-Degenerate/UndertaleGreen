var centX = boxCentreX - boxWidth * 0.5;
if shieldMode {
	boxTopY = (room_height - shieldBoxLength) * 0.5;
	//boxHeight = shieldBoxLength;
}
draw_sprite_stretched(box, frame, centX, boxTopY, boxWidth, boxHeight);