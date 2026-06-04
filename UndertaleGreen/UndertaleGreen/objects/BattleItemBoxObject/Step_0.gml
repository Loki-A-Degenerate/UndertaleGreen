event_inherited();

var count = 0;
// Count the number of defined items
for (var i = 0; i < array_length(global.inventory); i++) {
    var item = global.inventory[i];
    if (item != undefined) count++;
}
var pagesNeeded = ceil(count / 4);

for (var i = 0; i < array_length(global.inventory); i++) {
    var item = global.inventory[i];

    if (item == undefined) continue; // skip empty slots

    var page = i div 4;
    var slot = i mod 4;

    // create page if it doesn't exist yet
    if (page >= array_length(pages)) {
        pages[page] = array_create(4, undefined);
    }

    pages[page][slot] = item;
}

if upKey {
	selectedY--;
	if selectedY < 0 {
		selectedY = 1;
	}
	audio_play_sound(MenuMove, 0, false);
} else if downKey {
	selectedY++;
	if selectedY > 1 {
		selectedY = 0;
	}
	audio_play_sound(MenuMove, 0, false);
} else if rightKey {
	selectedX++;
	if selectedX > 1 {
		if selectedY == 0 {
			// Increase curPage number
			curPage++;
			if curPage >= array_length(pages) {
				curPage = 1;
			} else if curPage <= 0 {
				curPage = array_length(pages) - 1;
			}
			selectedX = 0;
		}
		selectedX = 0;
	}
	audio_play_sound(MenuMove, 0, false);
} else if leftKey {
	selectedX--;
	if selectedX < 0 {
		selectedX = 1;
	}
	audio_play_sound(MenuMove, 0, false);
}

soulX = 72 + (selectedX * 240);
soulY = 286 + (selectedY * 32);

if global.selectButtonPressed {
	audio_play_sound(MenuSelect, 0, false);
}