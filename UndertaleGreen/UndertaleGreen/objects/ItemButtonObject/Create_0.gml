function createItemMenu() {
	instance_create_layer(0, 0, "Instances", BattleItemBoxObject);
	instance_destroy(BattleBoxIntroObject);
}