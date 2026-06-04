function createActMenu() {
	instance_create_layer(0, 0, "Instances", BattleActBoxObject);
	instance_destroy(BattleBoxIntroObject);
}