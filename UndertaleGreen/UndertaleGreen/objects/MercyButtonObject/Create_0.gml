function createMercyMenu() {
	instance_create_layer(0, 0, "Instances", BattleMercyBoxObject);
	instance_destroy(BattleBoxIntroObject);
}