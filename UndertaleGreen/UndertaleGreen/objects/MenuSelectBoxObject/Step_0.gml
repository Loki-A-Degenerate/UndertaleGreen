event_inherited();

switch boxType
	{
		case "USE":
			text = "something something.";
			break;
		case "INFO":
			text = itemSelected.check;
			break;
		case "DROP":
			text = "Are you sure you want to drop the " + itemSelected.name + "?";
			textWidth = 200;
			break;
		case "READ":
			text = itemSelected.readLetter;
			break;
		case "PIN":
			text = "nothing much";
			break;
	}
//show_debug_message(textIndex);
//show_debug_message(text);

if keyboard_check_pressed(vk_enter)
	{
		show_debug_message("Ok we're in business");
	}