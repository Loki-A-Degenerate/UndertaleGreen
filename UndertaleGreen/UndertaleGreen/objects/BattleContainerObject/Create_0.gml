battleButtons = [FightButtonObject, ActButtonObject, ItemButtonObject, MercyButtonObject];
battleButtonY = 432;
enemies = [];
subMenu = "";

elementsLeftX = 32;
bottomTextX = 30;
bottomTextY = 401;
buttonSpacing = 154;

HPWordX = 244;
HPWordY = 405;

// Saved player position.
savedX = 0;
savedY = 0;

selected = 0;

soul = KindSoul;
soulXLeft = 24 + (selected * 78);
soulYLeft = 225;

soulX = soulXLeft;
soulY = soulYLeft;

maxHP = global.hp;

function BattleExit()
{
	
}