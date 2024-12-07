function onCreate();
	addCharacterToList('whitty');
	addCharacterToList('bf');
	addCharacterToList('gf-scared');
	makeLuaSprite('bg','whittybg', -800, -230);
	makeLuaSprite('flashback','flashback/bitty', -500, -150);
	if(songName == 'lofright'){
		addLuaSprite('flashback', false);
	}
	if(songName != 'lofright'){
		addLuaSprite('bg', false);
	}
	makeAnimatedLuaSprite('glitch', 'static', -600, -300);
	scaleObject('glitch', 2, 2);
	addAnimationByPrefix('glitch', 'glitchout', 'static glitch', 24, true);
	objectPlayAnimation('glitch', 'glitchout');
	setObjectCamera('glitch', 'hud');
	setProperty('glitch.visible', false);
		addLuaSprite('glitch', true);
		function onUpdate();
			if(mustHitSection == false){
				setProperty('defaultCamZoom',0.7);
}
				if(mustHitSection == true){
			setProperty('defaultCamZoom',0.9);
}
}
}