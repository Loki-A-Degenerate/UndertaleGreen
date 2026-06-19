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
			category : "food",
						
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
			category : "food",
						
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
			category : "weapon",
						
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
			category : "weapon",
						
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
			category : "armour",
						
			df : 0,
						
			canUse : true,
			canDrop : true,
		},
		newApron :
		{
			name : "New Apron",
			nameShort : "New Apron",
			nameSerious : "New Apron",
			check : "It's new, in a way.",
			category : "armour",
						
			df : 0,
						
			canUse : true,
			canDrop : true,
		},
	},
	patch : 
	{
		sewnHeart : 
		{
			name : "Sewn Heart",
			nameShort : "SewnHeart",
			nameSerious : "SewnHeart",
			check : "It's patchy and kind of itchy, but it's yours",
			category : "patch",
			
			canUse : true,
			canDrop : false,
		}
	},
	key : 
	{
		brokenToy :
		{
			name : "Broken Toy",
			nameShort : "BrokenToy",
			nameSerious : "BrokenToy",
			check : "It belongs to someone important.",
			category : "key",
						
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
global.inventory[2] = global.item.armour.newApron;
global.inventory[3] = global.item.food.OKButterscotchPie;
global.inventory[4] = global.item.food.OKButterscotchPie;
global.inventory[5] = global.item.food.OKButterscotchPie;
global.inventory[6] = global.item.food.OKButterscotchPie;
global.inventory[7] = global.item.food.OKButterscotchPie;

global.mailList = [global.mail.introMail];

global.weapon = [global.item.weapon.fryingPan];
global.armour = [global.item.armour.simpleApron];