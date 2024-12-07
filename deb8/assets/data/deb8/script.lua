--actual script
function onCreate()
	--text for the song name
	makeLuaSprite('dark','',0,0)
    makeGraphic('dark',1920,1080,'000000')
    addLuaSprite('dark',true)
	setObjectCamera('dark','other')
	setScrollFactor('dark',0,0)
	doTweenAlpha('opacity', 'dark', 0.9, 0.0001, 'linear')
	
	makeLuaSprite('tormentor','songname/Deb',180,175)
	addLuaSprite('tormentor',true)
	setScrollFactor('tormentor',0,0)
	setObjectCamera('tormentor','other')
	
	makeAnimatedLuaSprite('perfect','Perfect',80,170)
	addAnimationByPrefix('perfect', 'perfect', 'Perfect', 24, false)
	addLuaSprite('perfect',true)
	setProperty('perfect.visible', false);
	setScrollFactor('perfect',0,0)
	setObjectCamera('perfect','other')
	
	doTweenAlpha('FadeOutYassOne', 'JukeBoxYassText', 0, 0.001, 'linear')
	doTweenAlpha('FadeOutYassTwo', 'JukeBoxSubText', 0, 0.001, 'linear')
end

--motion functions
function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
	doTweenAlpha('FadeOutOne', 'tormentor', 0, 0.5, 'circIn')
	doTweenAlpha('FadeOutTwo', 'dark', 0, 0.5, 'circIn')
end

function onUpdate()
	if misses == 0 and curBeat == 352 then
		setProperty('perfect.visible', true);
		objectPlayAnimation('perfect', 'perfect')
	end
	
end
