if image_alpha < 1 {
	image_alpha += 0.02;
} 

if image_alpha == 1 {
	if !instance_exists(GameOverTextObjects) {
		with instance_create_layer(0, 0, "Heartbreak", GameOverTextObjects) {
			GameOverText(0);
		}
	}
}