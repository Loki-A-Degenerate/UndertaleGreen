// Inherit the parent event
event_inherited();

if endOfText {
	if instance_exists(BattleItemBoxObject) || instance_exists(BattleActBoxObject) {
		instance_create_layer(0, 0, "Instances", BattleArenaObject);
		instance_create_layer(320, 320, "Instances", SoulObject);
		instance_destroy(BattleSubMenuObject);
	}
}