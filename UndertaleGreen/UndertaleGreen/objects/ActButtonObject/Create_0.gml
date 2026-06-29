function createActMenu() {
	instance_create_layer(0, 0, "BattleInstances", BattleActBoxObject);
	instance_destroy(BattleBoxIntroObject);
}