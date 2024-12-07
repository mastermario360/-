local effects = false
function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end

function onUpdatePost(el)
	if round(el) % 0.069 == 0 then
		createTrailFrame('Dad')
	end
	if effects then
		for a = 0, getProperty('notes.length') do
			if not getPropertyFromGroup('notes', a, 'mustPress') then
				setPropertyFromGroup('notes', a, 'y', getPropertyFromGroup('notes', a, 'y') * 1.7)
			end
		end
	end
end

local curTrailDad = 0
local curTrailBF = 0
local trailLength = 24
function createTrailFrame(tag)
	num = 0
	color = -1
	image = ''
	frame = 'BF idle dance'
	x = 0
	y = 0
	scaleX = 0
	scaleY = 0
	offsetX = 0
	offsetY = 0

	if tag == 'BF' then
		num = curTrailBF
		curTrailBF = curTrailBF + 1
		if trailEnabledBF then
			color = getColorFromHex('FF3D6E')
			image = getProperty('boyfriend.imageFile')
			frame = getProperty('boyfriend.animation.frameName')
			x = getProperty('boyfriend.x')
			y = getProperty('boyfriend.y')
			scaleX = getProperty('boyfriend.scale.x') 
			scaleY = getProperty('boyfriend.scale.y') 
			offsetX = getProperty('boyfriend.offset.x')
			offsetY = getProperty('boyfriend.offset.y')
		end
	else
		num = curTrailDad
		curTrailDad = curTrailDad + 1
		color = getColorFromHex('FF00FF')
		image = getProperty('dad.imageFile')
		frame = getProperty('dad.animation.frameName')
		x = getProperty('dad.x')
		y = getProperty('dad.y')
		scaleX = getProperty('dad.scale.x')
		scaleY = getProperty('dad.scale.y')
		offsetX = getProperty('dad.offset.x')
		offsetY = getProperty('dad.offset.y')
	end
	
	if num - trailLength + 1 >= 0 then
		for i = (num - trailLength + 1), (num - 1) do
			setProperty('psychicTrail'..tag..i..'.alpha', getProperty('psychicTrail'..tag..i..'.alpha') - (0.6 / (trailLength - 1)))
		end
	end
	removeLuaSprite('psychicTrail'..tag..(num - trailLength + 1))
	

	if not (image == '') then
		trailTag = 'psychicTrail'..tag..num
		makeAnimatedLuaSprite(trailTag, image, x, y)
		setProperty(trailTag..'.offset.x', offsetX)
		setProperty(trailTag..'.offset.y', offsetY)
		setProperty(trailTag..'.scale.x', scaleX)
		setProperty(trailTag..'.scale.y', scaleY)
		setProperty(trailTag..'.alpha', 0.3)
		--setBlendMode(trailTag, 'add')
		addAnimationByPrefix(trailTag, 'stuff', frame, 0, false)
		addLuaSprite(trailTag, true)
	end
end