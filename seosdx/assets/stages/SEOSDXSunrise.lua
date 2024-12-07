function onCreate()
	makeLuaSprite('back','backgrounds/SUNRISE/BACK_BGSUNRISE',-500,-700)
	setScrollFactor('back',0.6,0.6)
	scaleObject('back',0.9,0.9)
	makeLuaSprite('front','backgrounds/SUNRISE/Front_BGSUNRISE',-500,-700)
	setScrollFactor('front',0.95,0.95)
	scaleObject('front',0.9,0.9)

	addLuaSprite('back',false)
	addLuaSprite('front',false)

	close(true)
end