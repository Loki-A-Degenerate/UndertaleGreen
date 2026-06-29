function GameOverText(_battleType){
	switch _battleType {
		default:
			var rando = irandom(3);
			switch rando {
				case 0:
					TextScript("Wow, that went horribly,");
					TextScript("C'mon, can't stall for too long.");
					break;
				case 1:
					TextScript("Yowch, wouldn't want to be you.");
					TextScript("Let's get a move on.");
					break;
				case 2:
					TextScript("You use the arrow keys to dodge, by the way.");
					TextScript("Hope this helps.");
					break;
				case 3:
					TextScript("That'll leave a mark.");
					TextScript("Good thing those scars won't stay :)");
					break;
			}
			break;
	}
}