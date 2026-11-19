function CreatePlayerStats(){ // Call when starting a new run.
	// Player stats 
	ini_open("UndertaleGreenSave.ini");
	global.playerName = ini_read_string("Player", "name", "Sunny");
	global.lv = ini_read_real("Player", "LV", 1);
	global.exp = ini_read_real("Player", "exp", 0);
	global.hp = ini_read_real("Player", "hp", 5);
	global.maxHp = ini_read_real("Player", "maxHp", 20);
	global.at = ini_read_real("Player", "at", 0);
	global.df = ini_read_real("Player", "df", 0);
	global.gold = ini_read_real("Player", "gold", 0);
	ini_close();
}