textIndex += textSpeed;

if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))
	{
		if textIndex < string_length(text)
			{
				textIndex = string_length(text); // Skip text
			}
	}
if textIndex >= string_length(text)
	{
		if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) 
			{
				on_text_advance();
			}
	}