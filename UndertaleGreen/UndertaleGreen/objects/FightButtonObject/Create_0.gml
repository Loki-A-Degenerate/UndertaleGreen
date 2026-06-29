function createFightMenu() {
	instance_create_layer(0, 0, "BattleInstances", BattleFightBoxObject);
	instance_destroy(BattleBoxIntroObject);
}