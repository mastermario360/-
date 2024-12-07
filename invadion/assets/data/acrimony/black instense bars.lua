function onCreate()
    makeLuaSprite('bar1', 'black', -600, 635)
	
    makeLuaSprite('bar2', 'black', -600, -496)
	
    addLuaSprite('bar1')
    addLuaSprite('bar2')
    setObjectCamera('bar1', 'other')
    setObjectCamera('bar2', 'other')
	setPropertyLuaSprite('bar1', 'alpha', 0)
	setPropertyLuaSprite('bar2', 'alpha', 0)
end
function onSongStart()
	doTweenAlpha('bye1', 'bar1', 1, 1.5, 'linear')
	doTweenAlpha('bye2', 'bar2', 1, 1.5, 'linear')


end
function onBeatHit()
	if curBeat == 64 then
		doTweenAlpha('bye1', 'bar1', 0, 0.5, 'linear')
		doTweenAlpha('bye2', 'bar2', 0, 0.5, 'linear')
	end


end