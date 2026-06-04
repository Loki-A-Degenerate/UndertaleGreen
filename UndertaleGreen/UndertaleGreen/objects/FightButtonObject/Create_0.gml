function createFightMenu() {
	instance_create_layer(0, 0, "Instances", BattleFightBoxObject);
	instance_destroy(BattleBoxIntroObject);
}