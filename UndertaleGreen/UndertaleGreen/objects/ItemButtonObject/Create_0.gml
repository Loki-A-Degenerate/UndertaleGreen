function createItemMenu() {
	instance_create_layer(0, 0, "BattleInstances", BattleItemBoxObject);
	instance_destroy(BattleBoxIntroObject);
}