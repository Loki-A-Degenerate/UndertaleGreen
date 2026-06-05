event_inherited();

pages = [];
curPage = 0;

itemSelected = 0;

// Checks if the item in the index position exists
function itemExists(_page, _index) {
	if (_page >= array_length(pages)) return false;
    if (_index >= array_length(pages[_page])) return false;

    return pages[_page][_index] != undefined;
}