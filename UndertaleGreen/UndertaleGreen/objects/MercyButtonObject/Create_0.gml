function createMercyMenu() {
	instance_create_layer(0, 0, "BattleInstances", BattleMercyBoxObject);
	instance_destroy(BattleBoxIntroObject);
}