function SavingScript()
{
	ini_open("UndertaleGreenSave.ini");
	ini_write_real("Save1", "room", room);
	ini_write_real("Save1", "x", PlayerObject.x);
	ini_write_real("Save1", "y", PlayerObject.y);
	ini_write_real("Save1", "facing", PlayerObject.sprite_index);
	ini_write_string("Save1", "timer", CameraObject.fullClock);
	
	ini_write_string("Player", "name", global.playerName);
	ini_write_real("Player", "LV", global.lv);
	ini_write_real("Player", "exp", global.exp);
	ini_write_real("Player", "hp", global.hp);
	ini_write_real("Player", "maxHp", global.maxHp);
	ini_write_real("Player", "at", global.at);
	ini_write_real("Player", "df", global.df);
	ini_write_real("Player", "gold", global.gold);
	
	ini_close();	
}