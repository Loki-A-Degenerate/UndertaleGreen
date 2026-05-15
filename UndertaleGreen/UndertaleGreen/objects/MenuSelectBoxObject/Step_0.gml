event_inherited();

// Getting an item's index, why doesn't gamemaker have a remove(item) function for arrays?
var index = -1;
for (var i = 0; i < array_length(global.inventory); i++) 
{
	if global.inventory[i] == itemSelected
	{
		index = i;	
	}
}

switch boxType
	{
		case "USE":
			text[0] = "You used the " + itemSelected.name;
			break;
		case "INFO":
			text[0] = itemSelected.check;
			break;
		case "DROP":
			if itemSelected.canDrop
			{
				text[0] = "Are you sure you want to drop the " + itemSelected.name + "?";
				text[1] = "You dropped the " + itemSelected.name;
			}
			else
			{
				text[0] = "This item is too important to you";
			}
			//textWidth = 200;
			break;
		case "READ":
			text[0] = itemSelected.readLetter;
			break;
		case "PIN":
			text[0] = "nothing much";
			break;
	}

//show_debug_message(textIndex);
//show_debug_message(selected);

if global.selectButtonPressed
{
	if selected == 0 && itemSelected.canDrop
	{
		array_delete(global.inventory, index, 1);
	}
	else
	{
		instance_destroy();
	}
}
