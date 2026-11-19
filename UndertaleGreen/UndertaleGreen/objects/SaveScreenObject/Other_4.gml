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

	global.playerName = ini_read_string("Player", "name", "Sunny");
	global.lv = ini_read_real("Player", "LV", 1);
	global.exp = ini_read_real("Player", "exp", 0);
	global.hp = ini_read_real("Player", "hp", 5);
	global.maxHp = ini_read_real("Player", "maxHp", 20);
	global.at = ini_read_real("Player", "at", 0);
	global.df = ini_read_real("Player", "df", 0);
	global.gold = ini_read_real("Player", "gold", 0);
