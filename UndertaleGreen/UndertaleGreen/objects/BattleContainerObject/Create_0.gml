// The battle buttons
battleButtons = [FightButtonObject, ActButtonObject, ItemButtonObject, MercyButtonObject];
battleButtonY = 432;

// The list of enemies
enemies = [BattleEncounterObject, BattleTransitionObject];

elementsLeftX = 32;
bottomTextX = 30;
bottomTextY = 401;
buttonSpacing = 154;

HPBoxX = 275;
HPBoxY = 400;
HPWordX = 244;
HPWordY = 405;

// Saved player position.
savedX = SoulBattleTransObject.savedX;
savedY = SoulBattleTransObject.savedY;

savedRoom = SoulBattleTransObject.savedRoom;

selected = 0;

// The soul
soul = KindSoul;
soulXLeft = 24 + (selected * 78);
soulYLeft = 225;

soulX = soulXLeft;
soulY = soulYLeft;

maxHP = global.maxHp;