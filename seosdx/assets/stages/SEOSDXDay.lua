function onCreate()
	makeLuaSprite('back','backgrounds/DAY/BACK_BGDAY',-500,-700)
	setScrollFactor('back',0.6,0.6)
	scaleObject('back',0.9,0.9)
	makeLuaSprite('front','backgrounds/DAY/Front_BGDAY',-500,-700)
	setScrollFactor('front',0.95,0.95)
	scaleObject('front',0.9,0.9)
	makeLuaSprite('dead','GarDead',-700,300)
	setScrollFactor('dead',0.95,0.95)


	addLuaSprite('back',false)
	addLuaSprite('front',false)
	addLuaSprite('dead',false)

	close(true)
end