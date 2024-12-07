function onCreate() -- Created By ForestZ
	makeLuaSprite('background', 'background', -422, -60);
        scaleLuaSprite('background', 1.8, 1.8);
	setLuaSpriteScrollFactor('background', 1.0, 1.0);
        addLuaSprite('background', false);

	makeLuaSprite('light','light',-680,-85)
	addLuaSprite('light',true)
	setLuaSpriteScrollFactor('light', 1, 1);


	close(true); 
end