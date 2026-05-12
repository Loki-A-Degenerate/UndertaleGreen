box = MenuSprite;
frame = -1;

boxTopY = 26;
boxBotY = 84;

boxStatTop = boxTopY;
boxStatBot = 161;
boxStatMiniY = boxStatTop;

boxLeftX = 16
boxRightX = 94;

boxItemH = 181;
boxStatH = 209;
boxMailH = boxItemH;

boxRightW = 179;
boxRightH = 0;

selected = 0;
selectedItem = 0;

soulXRight = boxRightX + 12;
soulYRight = boxTopY + 22 + (selectedItem * 16);

soul = SoulMenuSprite;

menuType = MenuObject.submenu;
optionState = false;