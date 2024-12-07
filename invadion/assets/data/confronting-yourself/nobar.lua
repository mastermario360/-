
function onCreatePost()
    setProperty('healthBar.x', 50000)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('timeTxt.y', 650)

setProperty('sicks.x', 6000)
setProperty('goods.x', 6000)
setProperty('bads.x', 6000)
setProperty('shits.x', 6000)
setProperty('misses.x', 6000)

function onUpdate(elapsed)
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
		end
end
end