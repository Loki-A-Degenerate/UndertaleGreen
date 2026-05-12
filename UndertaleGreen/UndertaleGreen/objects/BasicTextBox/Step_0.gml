textIndex += textSpeed;

var currentChar = floor(textIndex);
var prevChar = floor(prevTextIndex);
var char = string_char_at(text, currentChar);

if currentChar > prevChar && char != " "
{
	audio_stop_sound(textSound);
	audio_play_sound(textSound, 0, false);
}

if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))
{
	if textIndex < string_length(text)
	{
		textIndex = string_length(text); // Skip text
	}
}
if textIndex >= string_length(text)
{
	audio_stop_sound(textSound);
	if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) 
	{
		on_text_advance();
	}
}

prevTextIndex = textIndex;