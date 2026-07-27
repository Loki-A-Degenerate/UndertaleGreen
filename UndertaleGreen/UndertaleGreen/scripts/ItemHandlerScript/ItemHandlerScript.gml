function ItemHandlerScript(_item, _action) {
	switch _action {
		case "USE" :
			UseItemScript(_item);
			break;
		case "INFO" :
			InfoItemScript(_item);
			break;
		case "READ" :
			ReadMailScript(_item);
			break;
		case "DROP" :
			DropItemScript(_item);
			break;
	}
}

function UseItemScript(_item) {
	var flavourText = "";
	// Getting an item's index, why doesn't gamemaker have a remove(item) function for arrays?
	var index = -1;
	for (var i = 0; i < array_length(global.inventory); i++) {
		if global.inventory[i] == _item {
			index = i;	
		}
	}
	switch _item.category {
		case "food" :
			TextScript("You ate the " + _item.name + ".")
			audio_play_sound(Heal, 0, false);
			global.hp += _item.heals;	
			if global.hp >= global.maxHp {
				global.hp = global.maxHp;
				TextScript("Your hp was maxed out.");
			}
			break;
		case "ingredient" :
			TextScript("You tried stomaching some raw ingredients.");
			global.hp++; 
			if global.hp >= global.maxHp {
				global.hp = global.maxHp;
				TextScript("\nYour HP was maxed out... somehow.");
			}
			break;
		case "patch" :
			//if _item.name == ""
			TextScript("You sewed on the " + _item.name + ".");
			TextScript(_item.use);
			break;
	}
	if _item.canDrop {
		array_delete(global.inventory, index, 1);
	}
}

function InfoItemScript(_item) {
	TextScript(_item.check);
}

function ReadMailScript(_item) {
	TextScript(_item.readLetter);
}

function DropItemScript(_item) {

		if _item.canDrop {
			TextScript("Are you sure you want to drop the " + _item.name + "?");
			TextScript("You dropped the " + _item.name);
		} else {
			TextScript("This item is too important to you");
		}
}