function opponentNoteHit()
    health = getProperty('health')
    if getProperty('dad.curCharacter') == 'Yuribuck' and getProperty('health') > 0.4 or getProperty('dad.curCharacter') == 'gf' and getProperty('health') > 0.4 or getProperty('dad.curCharacter') == 'gf' and getProperty('health') > 0.4 then
        setProperty('health', health- 0.02);
    end
end