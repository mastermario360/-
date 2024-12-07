font = "vcr.ttf" 
function onStartCountdown()
	setTextFont('scoreTxt', font) -- sets the score bar text to the chosen font
	setProperty('scoreTxt.x', getProperty('scoreTxt.x') + 46) -- sets x value of score bar
	setProperty('scoreTxt.y', getProperty('scoreTxt.y') + 10) -- sets y value of score bar
	setProperty('scoreTxt.scale.x', getProperty('scoreTxt.scale.x') + 0) -- sets wideness of score bar
	setProperty('scoreTxt.scale.y', getProperty('scoreTxt.scale.y') + 0) -- sets tallness of score bar
	setTextColor('scoreTxt', 'FFFF00') 
end
