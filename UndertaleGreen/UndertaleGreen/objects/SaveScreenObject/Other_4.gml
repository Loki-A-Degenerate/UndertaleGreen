ini_open("UndertaleGreenSave.ini");

locale = ini_read_string("Save1", "locale", "Menu");
switch locale {
	case "Ruins":
		saveScreen = SampleSaveScreen;
		break;
	case "Somewhere":
		saveScreen = SampleSaveScreen2;
		break;
}

localRoom =  ini_read_real("Save1", "room", 0);
playerX = ini_read_real("Save1", "x", 0);
playerY = ini_read_real("Save1", "y", 0);
time = ini_read_real("Save1", "timer", 0);
face = ini_read_real("Save1", "facing", 29);

name = ini_read_string("Player", "name", "Sunny");
lv = ini_read_real("Player", "LV", 1);