function SavingScript()
{
	ini_open("UndertaleGreenSave.ini");
	ini_write_real("Save1", "room", room);
	ini_write_real("Save1", "x", PlayerObject.x);
	ini_write_real("Save1", "y", PlayerObject.y);
	ini_write_real("Save1", "facing", PlayerObject.sprite_index);
	//ini_write_real("Save1", "lv", s);
	ini_write_string("Save1", "timer", CameraObject.fullClock);
	ini_close();	
}