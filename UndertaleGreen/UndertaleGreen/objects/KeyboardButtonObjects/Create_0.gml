//This is basically FluffyNoelle's object code called "obj_dualinputchecker" which is handles the
//player pressing either one of the two buttons to activate some function. I did not want to keep
//writing two keyboard_checks every single goddamn time I wanted to do something, so thank you 
//FluffyNoelle, you're definitely ending up in my credits. 

global.selectButtonPressed = false;
global.selectButtonReleased = false;
global.deselectButtonPressed = false;
global.menuButtonPressed = false;

global.inputConsumed = false;