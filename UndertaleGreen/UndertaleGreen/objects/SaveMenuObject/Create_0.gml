ini_open("UndertaleGreenSave.ini");

box = MenuSprite;
frame = -1;

boxLeftX = 51;
boxTopY = 78;

boxWidth = 218;
boxHeight = 83;

selected = 0;
saving = false;
state = 0;

soul = SoulMenuSprite;

name = "Sunny";
lv = 0;
seconds = CameraObject.seconds;
minutes = CameraObject.minutes;

clock = CameraObject.fullClock;
prevClock = ini_read_real("Save1", "timer", 0);

region = GameControllerObject.RoomData.locale;
location = room_get_name(room);

ini_close();

function closeSaveMenu()
{
	instance_destroy(FloweyWorldStillObject);
	instance_activate_object(SaveObject);
	SaveObject.visible = false;
	instance_create_layer(SaveObject.x + 10, SaveObject.y + 5, "Instances", FloweyHide);
	instance_destroy();
}