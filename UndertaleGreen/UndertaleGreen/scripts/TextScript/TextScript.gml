/// @param text

function TextScript(_text){
	if _text == noone {
		text[pageNumber] = "If you're seeing this then I did something wrong.";
	}
	text[pageNumber] = _text;
	
	pageNumber++;
}