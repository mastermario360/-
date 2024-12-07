function start (song)
	print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
end


function update (elapsed) -- example https://twitter.com/KadeDeveloper/status/1382178179184422918
	local currentBeat = (songPos / 1000)*(bpm/100)
	for i=0,7 do
		setActorX(_G['defaultStrum'..i..'X'] + 50 * math.sin((currentBeat + i*3.18) * math.pi), i)
		setActorY(_G['defaultStrum'..i..'Y'] + 50 * math.cos((currentBeat + i*3.52) * math.pi), i)
	end
end

function beatHit (beat)
   -- do nothing
end

function stepHit (step)
   -- do nothing
end

function keyPressed (key)
   -- do nothing
end

print("Mod Chart script loaded :)")
