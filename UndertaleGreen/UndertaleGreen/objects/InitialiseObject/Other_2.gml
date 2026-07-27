// Player stats 
ini_open("UndertaleGreenSave.ini");
global.playerName = ini_read_string("Player", "name", "Sunny");
global.lv = ini_read_real("Player", "LV", 1);
global.exp = ini_read_real("Player", "exp", 0);
global.hp = ini_read_real("Player", "hp", 20);
global.maxHp = ini_read_real("Player", "maxHp", 20);
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
		},
		FlyCandy :
		{
			name : "Fly Candy",
			nameShort : "FlyCandy",
			nameSerious : "FlyCandy",
			check : "The buzzing makes you feel your nerves.",
			category : "food",
			
			heals : 5,
			
			canUse : true,
			canDrop : true,
		},
		FriedEgg : 
		{
			name : "Fried Egg",
			nameShort : "FriedEgg",
			nameSerious : "FriedEgg",
			check : "Share it with your friends!",
			category : "food",
			
			heals : 10,
			
			canUse : true,
			canDrop : true,	
		},
		cheese : 
		{
			name : "Cheese",	
			nameShort : "Cheese",
			nameSerious : "Cheese",
			check : "It's cheese",
			category : "food",
			
			heals : 10,
			
			canUse : true,
			canDrop : true,
		},
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
			check : "It's patchy and kind of itchy, but it's yours.",
			category : "patch",
			use : "You lack the tools needed to sew this patch back on.",
			ext_df : 0,
			
			canUse : true,
			canDrop : false,
		},
		
		snowFlake :
		{
			name : "Snowflake",	
			nameShort : "Snowflake",
			nameSerious : "Snowflake",
			check : "A patch of snow.",
			category : "patch",
			use : "",
			ext_df : 5,
			
			canUse : true,
			canDrop : true,
		},
		
		chefBadge :
		{
			name : "Chef's Badge",	
			nameShort : "ChefBadge",
			nameSerious : "ChefBadge",
			check : "With this on, you are a certified chef!",
			category : "patch",
			use : "You are certified chef. You can now enter the kitchen.",
			ext_df : 5,
			
			canUse : true,
			canDrop : true,
		},
		
		deltaRune : 
		{
			name : "The Delta Rune",
			nameShort : "Deltarune",
			nameSerious : "Deltarune",
			check : "The insignia of the monster kingdom",
			category : "patch",
			use : "You feel the ",
			ext_df : 10,
			
			canUse : true,
			canDrop : true,
		},
		flowerPatch : // Genocide exclusive
		{
			name : "Flower Patch",
			nameShort : "FlowPatch",
			nameSerious : "FlowPatch",
			check : "A gift from your best friend.",
			category : "patch",
			use : "You are now closer to your best friend... well what's left of him.",
			ext_df : 12,
			
			canUse : true,
			canDrop : true,
		},
	},
	ingredient :
	{
		butter : 
		{
			name : "Butter",
			nameShort : "Butter",
			nameSerious : "Butter",
			check : "Butter stick!",
			category : "ingredient",
			
			canUse : true,
			canDrop : true,
		},
		cinnamon :
		{
			name : "Cinnamon",
			nameShort : "Cinnamon",
			nameSerious : "Cinnamon",
			check : "The humble stick of cinnamon.",
			category : "ingredient",
			
			canUse : true,
			canDrop : true,	
		},
		eggs :
		{
			name : "Eggs",
			nameShort : "Eggs",
			nameSerious : "Eggs",
			check : "It's eggs! It's preferable to not ask about its origins",
			category : "ingredient",
			
			canUse : true,
			canDrop : true,	
		},
		flour :
		{
			name : "Flour",
			nameShort : "Flour",
			nameSerious : "Flour",
			check : "Flour! Not to be confused as your fellow companion",
			category : "ingredient",
			
			canUse : true,
			canDrop : true,	
		},
		flies :
		{
			name : "Flies",
			nameShort : "Flies",
			nameSerious : "Flies",
			check : "It's flies... ew.",
			category : "ingredient",
			
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
			category : "key",
						
			canUse : true,
			canDrop : false,
		},
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