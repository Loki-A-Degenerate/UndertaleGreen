box = MenuSprite;
frame = -1;

boxTopY = 26;
boxBotY = 84;

boxStatTop = boxTopY;
boxStatBot = 161;
boxStatMiniY = boxStatTop;

boxLeftX = 16
boxRightX = 94;

// Main menu box height
boxLeftW = 71

// Menu box heights
boxStatMiniH = 55;
boxSelectH = 74;

// Sub menu heights
boxItemH = 181;
boxStatH = 209;
boxCellH = 135;

boxRightW = 179;

boxRightH = boxItemH;

moneyOff = 1;

// Player stat things
name = "Sunny";
lv = 1;
hp = 20;
hp_max = 20;
money = 0;

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