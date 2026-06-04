draw_sprite_stretched(box, frame, boxLeftX, boxTopY, boxWidth, boxHeight);
draw_set_font(UndertaleFontMenuLarge);

switch subMenu {
	case "Fight":
		break;
	case "Act":
		break;
	case "Item":
		break;
	case "Mercy":
		text[0] = "* Spare";
		text[2] = "* Flee";
		break;
}

if !fleeing {
	draw_sprite(soul, 0, soulX, soulY);
} else {
	text[0] = fleeMessages;
	text[2] = "";
}

draw_text(textFirstX, textFirstY, text[0]);
draw_text(textFirstX, textLastY, text[2]);
draw_text(textLastX, textFirstY, text[1]);
draw_text(textLastX, textLastY, text[3]);