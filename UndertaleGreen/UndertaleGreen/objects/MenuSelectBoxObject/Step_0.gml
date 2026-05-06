event_inherited();

switch boxType
	{
		case "USE":
			text = "something something.";
			show_debug_message(text);
			break;
		case "INFO":
			text = itemSelected.check;
			break;
		case "DROP":
			break;
			
	}
//show_debug_message(textIndex);
show_debug_message(text);

if keyboard_check_pressed(vk_enter)
	{
		show_debug_message("Ok we're in business");
	}