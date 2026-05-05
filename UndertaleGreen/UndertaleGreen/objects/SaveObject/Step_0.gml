if place_meeting(x, y, PlayerObject) 
	{
		ini_open("UndertaleGreenSave.ini");
		ini_write_real("Save1", "room", room);
		ini_write_real("Save1", "x", PlayerObject.x);
		ini_write_real("Save1", "y", PlayerObject.y);
		ini_write_real("Save1", "facing", PlayerObject.sprite);
		ini_close();
	}