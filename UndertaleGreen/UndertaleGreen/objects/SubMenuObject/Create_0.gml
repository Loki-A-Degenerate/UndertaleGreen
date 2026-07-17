box = MenuSprite;
frame = -1;

boxTopY = 26;

boxRightX = 94;

boxItemH = 181;
boxStatH = 209;
boxMailH = boxItemH;

boxRightW = 179;
boxRightH = 0;

state = 0;
selected = 0;
selectedItem = 0;

soulXRight = boxRightX + 12;
soulYRight = boxTopY + 22 + (selectedItem * 16);

soul = SoulMenuSprite;

menuType = MenuObject.submenu;
optionState = false;

name = global.playerName;
lv = global.lv;
hpMax = global.maxHp;
ex = global.exp;
next = LevelNeededScript();
at = global.at;
df = global.df;
gold = global.gold;
weapon = global.weapon[0];
armour = global.armour[0];