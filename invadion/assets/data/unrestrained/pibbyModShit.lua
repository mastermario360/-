--see? It's not that difficult
local angleshit = 1;
local anglevar = 1;
function onCreate()
	addCharacterToList('bfgf')
	addCharacterToList('both')



end
function onStepHit()
	
		if getProperty('health') > 0.4 then	 
			cameraShake('hud', 0.003, 0.2);
		elseif getProperty('health') < 0.4 then
			cameraShake('hud', 0.01, 0.2);
		end
	
end	
function opponentNoteHit()
    local luckyRoll = math.random(1, 50)
    local luckyRoll2 = math.random(1, 50)
    
    if mustHitSection == false and curBeat > 63 then
        if (luckyRoll >= 48) then
            cameraShake('hud', 0.08, 0.05);
        end
    end
    if mustHitSection == false and curBeat > 63 then
        if (luckyRoll2 >= 48) then
            cameraShake('game', 0.08, 0.05);
        end
    end
end
function opponentNoteHit()
	if getProperty('health') > 0.2 then
		setProperty('health', getProperty('health')-0.019) 
	end


end
function onBeatHit()
    if curBeat > 64 then
       
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
    
    
	end
end

