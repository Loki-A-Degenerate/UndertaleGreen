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

clock = ini_read_string("Save1", "timer", "0:0");
prevClock = 0;

region = "Ruins";
location = "Flower Bed";

ini_close();