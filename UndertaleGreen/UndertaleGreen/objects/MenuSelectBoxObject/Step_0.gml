event_inherited();

// Getting an item's index, why doesn't gamemaker have a remove(item) function for arrays?
var index = -1;
for (var i = 0; i < array_length(global.inventory); i++) {
	if global.inventory[i] == itemSelected {
		index = i;	
	}
}



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
