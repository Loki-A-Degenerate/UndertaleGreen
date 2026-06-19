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

switch boxType {
		case "USE":
			if itemSelected.name == "Sewn Heart" {
				text[0] = "You lack the tools required to sew this patch back on.";
				break;
			}
			text[0] = "You used the " + itemSelected.name;
			if itemSelected.category == "food" {
				global.hp += itemSelected.heals;
				if global.hp > maxHP {
					global.hp = maxHP;
					text[1] = "Your HP was fully restored!";
				}
			}
			break;
		case "INFO":
			text[0] = itemSelected.check;
			break;
		case "DROP":
			if itemSelected.canDrop {
				text[0] = "Are you sure you want to drop the " + itemSelected.name + "?";
				text[1] = "You dropped the " + itemSelected.name;
			} else {
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

// Dropping the item. I'm hoping none of these other sub menus have options.
if global.selectButtonPressed {
	if boxType == "USE" {
		switch itemSelected.category {
			case "armour": 
				array_delete(global.inventory, index, 1);
				array_insert(global.inventory, index, global.armour[0]);
				array_delete(global.armour, 0, 1);
				global.armour[0] = itemSelected;
				break;
		}
	} else if boxType == "DROP" {
		if selected == 0 && itemSelected.canDrop {
			array_delete(global.inventory, index, 1);
			selected = 1;
			//show_debug_message(itemSelected.name);
		} else {
			instance_destroy();
		}
	}
}
