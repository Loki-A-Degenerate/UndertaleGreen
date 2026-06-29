// Inherit the parent event
event_inherited();

if endOfText {
	if instance_exists(BattleItemBoxObject) || instance_exists(BattleActBoxObject) {
		instance_create_layer(0, 0, "BattleInstances", BattleArenaObject);
		instance_create_layer(320, 320, "BattleInstances", SoulObject);
		instance_destroy(BattleSubMenuObject);
	}
}