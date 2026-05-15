//select
global.selectButtonPressed = keyboard_check_pressed(global.selectKey) || keyboard_check_pressed(global.selectKey2) || keyboard_check_pressed(vk_enter);
global.selectButtonReleased = keyboard_check_released(global.selectKey) || keyboard_check_released(global.selectKey2) || keyboard_check_released(vk_enter);

//deselect
global.deselectButtonPressed = keyboard_check_pressed(global.deselectKey) || keyboard_check_pressed(vk_shift);

//open menu
global.menuButtonPressed = keyboard_check_pressed(global.menuKey) || keyboard_check_pressed(vk_control);