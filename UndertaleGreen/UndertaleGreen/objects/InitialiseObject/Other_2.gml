// Player stats 
ini_open("UndertaleGreenSave.ini");
global.playerName = ini_read_string("Player", "name", "Sunny");
global.lv = ini_read_real("Player", "LV", 1);
global.exp = ini_read_real("Player", "exp", 0);
global.hp = ini_read_real("Player", "hp", 20);
global.at = ini_read_real("Player", "at", 0);
global.df = ini_read_real("Player", "df", 0);
global.gold = ini_read_real("Player", "gold", 0);
ini_close();

// Letter keys that don't have a direct vk code
global.selectKey = ord("Z");
global.selectKey2 = ord("Y");
global.deselectKey = ord("X");
global.menuKey = ord("C");

global.item = 
{
	food : 
	{
		perfectButterscotchPie : 
		{
			name : "Perfect Butterscotch Pie",
			nameShort : "ButtsPie",
			nameSerious : "Best Pie",
			check : "Baked using perfect ingredients and at a perfect temperature!",
						
			heals : 100,
						
			canUse : true,
			canDrop : true,
		},
		OKButterscotchPie : 
		{
			name : "Ok Butterscotch Pie",
			nameShort : "OkButtPie",
			nameSerious : "OkPie",
			check : "Baked using ok ingredients and at a ok temperature.",
						
			heals : 60,
						
			canUse : true,
			canDrop : true,
		}
	},
	weapon : 
	{
		fryingPan : 
		{
			name : "Frying Pan",
			nameShort : "FryingPan",
			nameSerious : "FryingPan",
			check : "Good old reliable",
						
			at : 5,
						
			canUse : true,
			canDrop : true,
		},
		charedFryingPan :
		{
			name : "Chared Frying Pan",
			nameShort : "Perfect Butt Pie",
			nameSerious : "Perfect Pie",
			check : "Even more hotter and reliabler",
						
			at : 10,
						
			canUse : true,
			canDrop : true,
		}
	},
	armour : 
	{
		simpleApron :
		{
			name : "Old Apron",
			nameShort : "Old Apron",
			nameSerious : "Old Apron",
			check : "It's got a heart sewn by yours truly.",
						
			df : -1,
						
			canUse : true,
			canDrop : true,
		},
	},
	key : 
	{
		brokenToy :
		{
			name : "Broken Toy",
			nameShort : "BrokenToy",
			nameSerious : "BrokenToy",
			check : "It belongs to someone important.",
						
			canUse : true,
			canDrop : false,
		}
	},
}

global.mail = 
{
	introMail :
	{
		name : "Introduction Letter",
		readLetter : "This is your first letter!",
				
		canUse : true,
		canDrop : false,
	}
		
}
global.inventory = array_create(16, undefined);
global.inventory[0] = global.item.key.brokenToy;
global.inventory[1] = global.item.weapon.fryingPan;
global.inventory[2] = global.item.armour.simpleApron;
global.inventory[3] = global.item.armour.simpleApron;
global.inventory[4] = global.item.armour.simpleApron;
global.inventory[5] = global.item.armour.simpleApron;
global.inventory[6] = global.item.armour.simpleApron;
global.inventory[7] = global.item.armour.simpleApron;
for (var i = 0; i < array_length(global.inventory); i++) {
	//show_debug_message(global.inventory[i]);
}
global.mailList = [global.mail.introMail];