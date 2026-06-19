leftKey = keyboard_check_pressed(vk_left);
rightKey = keyboard_check_pressed(vk_right);
downKey = keyboard_check_pressed(vk_down);
upKey = keyboard_check_pressed(vk_up);

if global.deselectButtonPressed && !instance_exists(BattleBoxIntroObject) {
	instance_destroy();
}