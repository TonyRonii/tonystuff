function onCreate()

	makeLuaSprite('Sky', 'Green Hill Zone/Sky', -1000, -630);
	setScrollFactor('Sky', 0.9, 0.9);
	scaleObject('Sky', 1.2, 1.2);

	makeLuaSprite('Mountains', 'Green Hill Zone/Mountains', -1000, -200);
	setScrollFactor('Mountains', 0.9, 0.9);
	scaleObject('Mountains', 1.3, 1.3);

	makeAnimatedLuaSprite('Water_Fall', 'Green Hill Zone/waterfallbg', -700, 320);
	addAnimationByPrefix('Water_Fall','wotorfall','animation water',24,true)
	scaleObject('Water_Fall', 1.3, 1.3);

	makeAnimatedLuaSprite('Water', 'Green Hill Zone/lake', -900, 580);
	addAnimationByPrefix('Water','wotor','Animated Water',24,true)
	scaleObject('Water', 1.3, 1.3);

	makeLuaSprite('clouds', 'Green Hill Zone/Clouds', -1000, -200);
	setScrollFactor('clouds', 0.4, 0.4);

	makeLuaSprite('floor', 'Green Hill Zone/Floor GreenHill', -790, 730);
	setScrollFactor('floor', 0.9, 0.9);
	scaleObject('floor', 1.1, 1.1);

	makeLuaSprite('tree_one', 'Green Hill Zone/tree', 110, -250);
	setScrollFactor('tree_one', 0.9, 0.9);
	scaleObject('tree_one', 1.0, 1.0);

	makeLuaSprite('tree_dos', 'Green Hill Zone/tree', -490, -257);
	setScrollFactor('tree_dos', 0.9, 0.9);
	scaleObject('tree_dos', 1.0, 1.0);

	addLuaSprite('Sky', false);
	addLuaSprite('clouds', false);
	addLuaSprite('Mountains', false);
	addLuaSprite('Water_Fall',false);
	addLuaSprite('Water',false);
	addLuaSprite('floor', false);
	addLuaSprite('tree_one', false);
	addLuaSprite('tree_dos', false);
	
	close(true);

end