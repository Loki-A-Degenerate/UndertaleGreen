box = MenuSprite;
frame = -1;

boxTopY = 26;
boxBotY = 84;

boxLeftX = 16
boxRightX = 94;

// Main menu box height
boxLeftW = 71

// Menu box height
boxSelectH = 74;

// Soul Menu Move
selected = 0;
// The physical item that is being selected in the submenu
selectedItem = 0;
submenu = "select";

soul = SoulMenuSprite;

soulXLeft = boxLeftX + 16;
soulYLeft = boxBotY + 18 + (selected * 18);

soulXRight = boxRightX + 12;
soulYRight = boxTopY + 22 + (selectedItem * 16);

soulX = soulXLeft
soulY = soulYLeft;

state = 0;