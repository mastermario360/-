function onCreate()
	makeLuaSprite('1', 'funny/1', defaultBoyfriendX, defaultBoyfriendY)
	setObjectCamera('1', 'hud')
	makeLuaSprite('2', 'funny/2', defaultBoyfriendX-400, defaultBoyfriendY+200)
	setObjectCamera('2', 'hud')
	scaleObject('2', 0.1, 0.1)
	makeLuaSprite('3', 'funny/3', defaultBoyfriendX-500, defaultBoyfriendY)
	setObjectCamera('3', 'hud')
end




function onStepHit()

   if curStep == 38 then
            addLuaSprite('1', true)
            
    end
if curStep == 40 then
            removeLuaSprite('1', false)
            
    end
	
 if curStep == 70 then
            addLuaSprite('2', true)
            
    end
if curStep == 73 then
            removeLuaSprite('2', false)
            
    end
if curStep == 114 then
            addLuaSprite('3', true)
            
    end
if curStep == 117 then
            removeLuaSprite('3', false)
            
    end
 if curStep == 163 then
            addLuaSprite('1', true)
            
    end
 if curStep == 175 then
            addLuaSprite('2', true)
            
    end
if curStep == 186 then
            addLuaSprite('3', true)
            
    end
if curStep == 217 then
            setProperty('health', -1)
            
    end
end
function onUpdate()
	if inGameOver then
	playSound('ded', 1)
	close(true)
	end
end