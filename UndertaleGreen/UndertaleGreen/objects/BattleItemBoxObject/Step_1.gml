//pages = [];
var index = 0;
// Constructing each page of the item iventory
for (var i = 0; i < array_length(global.inventory); i++) {
    var item = global.inventory[i];

    if (item == undefined) continue; // skip empty slots

    var page = index div 4;
    var slot = index mod 4;

    // create page if it doesn't exist yet
    if (page >= array_length(pages)) {
        pages[page] = array_create(4, undefined);
    }

    pages[page][slot] = item;
	index++;
}