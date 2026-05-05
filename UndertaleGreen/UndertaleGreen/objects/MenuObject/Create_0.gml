box = MenuSprite;
frame = -1;

boxTopY = 26;
boxBotY = 84;

boxStatTop = boxTopY;
boxStatBot = 161;
boxStatMiniY = boxStatTop;

boxLeftX = 16
boxRightX = 94;

boxLeftW = 71
boxRightW = 173;

boxStatMiniH = 55;
boxSelectH = 74;

boxItemH = 181;
boxStatH = 209;
boxCellH = 135;

boxRightH = boxItemH;

moneyOff = 1;

name = "Sunny";
lv = 1;
hp = 20;
hp_max = 20;
money = 0;

selected = 0;
selectedItem = 0;
submenu = "select";

soul = SoulMenuSprite;

soulXLeft = boxLeftX + 16;
soulYLeft = boxBotY + 18 + (selected * 18);

soulXRight = boxRightX + 12;
soulYRight = boxBotY + 18 + (selected * 18);

soulX = soulXLeft
soulY = soulYLeft;