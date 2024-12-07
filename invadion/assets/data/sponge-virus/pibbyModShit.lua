--see? It's not that difficult
local angleshit = 1;
local anglevar = 1;
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
    
    if mustHitSection == false then
        if (luckyRoll >= 48) then
            cameraShake('hud', 0.08, 0.05);
        end
    end
    if mustHitSection == false then
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


