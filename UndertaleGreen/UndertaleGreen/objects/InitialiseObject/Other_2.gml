//global.selectKey =

global.item = 
	{
		food : 
			{
				perfectButterscotchPie : 
					{
						name : "Perfect Butterscotch Pie",
						nameShort : "Perfect Butt Pie",
						nameSerious : "Perfect Pie",
						check : "Baked using perfect ingredients and at a perfect temperature!",
						
						heals : 100,
					},
				OKButterscotchPie : 
					{
						name : "Ok Butterscotch Pie",
						nameShort : "Ok Butt Pie",
						nameSerious : "Ok Pie",
						check : "Baked using ok ingredients and at a ok temperature.",
						
						heals : 60,
					}
			},
		weapon : 
			{
				fryingPan : 
					{
						name : "Frying Pan",
						nameShort : "Perfect Butt Pie",
						nameSerious : "Perfect Pie",
						check : "Good old reliable",
						
						at : 5,
					},
				charedFryingPan :
					{
						name : "Chared Frying Pan",
						nameShort : "Perfect Butt Pie",
						nameSerious : "Perfect Pie",
						check : "Even more hotter and reliabler",
						
						at : 10,
					}
			},
		armor : 
			{
				simpleApron :
					{
						name : "Old Apron",
						nameShort : "Perfect Butt Pie",
						nameSerious : "Perfect Pie",
						check : "It's got a heart sewn by yours truly.",
						
						df : -1,
					},
			},
		key : 
			{
				brokenToy :
					{
						name : "Broken Toy",
						check : "It belongs to someone important.",
						
						can_use : true,
					}
			},
	}

global.mail = 
	{
		introMail :
			{
				name : "Introduction Letter",
				readLetter : "This is your first letter!"
			}
	}
	
global.inventory = [global.item.key.brokenToy, global.item.weapon.fryingPan, global.item.armor.simpleApron];
global.mailList = [global.mail.introMail];