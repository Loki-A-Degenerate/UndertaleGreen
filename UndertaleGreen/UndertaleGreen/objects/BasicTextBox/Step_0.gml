prevTextIndex = textIndex;

pageNumber = array_length(text);
for (var p = 0; p < pageNumber; p++)
{
	textLength[p] = string_length(text[p]);
}

if global.deselectButtonPressed
{
	if textIndex < textLength[page]
	{
		textIndex = textLength[page]; // Skip text
	}
}

if textIndex < textLength[page]
{
	textIndex += textSpeed;
	textIndex = clamp(textIndex, 0, textLength[page]);
}

if textIndex >= textLength[page]
{
	audio_stop_sound(textSound);
	if global.selectButtonPressed
	{
		if page < pageNumber - 1
		{
			page++;
			textIndex = 0;
		}
		else
		{
			instance_destroy();
		}
	}
}

var currentChar = max(1, floor(textIndex));
var prevChar = max(1, floor(prevTextIndex));
var char = string_char_at(text[page], currentChar);

if currentChar > prevChar && char != " "
{
	audio_stop_sound(textSound);
	audio_play_sound(textSound, 0, false);
}