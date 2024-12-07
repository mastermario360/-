function onCreate()
	makeLuaSprite('tu', 'Suelo', -100, 700);
	setScrollFactor('tu', 0.9, 0.9);
	scaleObject('tu', 2, 2);

	makeLuaSprite('tsu', 'as', -100, 0);
	setScrollFactor('tsu', 0.9, 0.9);
	scaleObject('tsu', 3, 3);

	makeLuaSprite('tue', '3sus', -100, -200);
	setScrollFactor('tue', 0.9, 0.9);
	scaleObject('tue', 2.4, 2.2);

	makeLuaSprite('tues', '4sus', -100, -200);
	setScrollFactor('tues', 0.9, 0.9);
	scaleObject('tues', 2.4, 2.2);

	addLuaSprite('tsu', false);
	addLuaSprite('tu', false);
	addLuaSprite('tue', false);
	addLuaSprite('tues', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end