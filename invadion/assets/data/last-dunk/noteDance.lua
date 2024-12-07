function onBeatHit()
	if curBeat % 2 == 0 and curStep < 634 then
		noteTweenAngle('l', 4, 180, 0.1, 'circOut')
		noteTweenAngle('d', 5, 180, 0.1, 'circOut')
		noteTweenAngle('u', 6, 180, 0.1, 'circOut')
		noteTweenAngle('r', 7, 180, 0.1, 'circOut')
		
	end
	if curBeat % 2 ~= 0 and curStep < 634 then
		noteTweenAngle('l', 4, 0, 0.1, 'circOut')
		noteTweenAngle('d', 5, 0, 0.1, 'circOut')
		noteTweenAngle('u', 6, 0, 0.1, 'circOut')
		noteTweenAngle('r', 7, 0, 0.1, 'circOut')
	end
	if curStep > 634 and curBeat % 2 == 0 and curStep < 757 then
		noteTweenAngle('d', 5, 0, 0.1, 'circOut')
		noteTweenAngle('u', 6, 0, 0.1, 'circOut')
		--noteTweenAngle('r', 7, 0, 0.1, 'circOut')
		--noteTweenAngle('l', 4, 180, 0.1, 'circOut')
		noteTweenX('red', 7, defaultPlayerStrumX0, 0.1, 'linear')
		noteTweenX('purple', 4, defaultPlayerStrumX3, 0.1, 'linear')
	end
	if curStep > 634 and curBeat % 2 ~= 0 and curStep < 757 then
		noteTweenX('red', 7, defaultPlayerStrumX3, 0.1, 'linear')
		noteTweenX('purple', 4, defaultPlayerStrumX0, 0.1, 'linear')
		--noteTweenAngle('r', 7, 0, 0.1, 'circOut')
		--noteTweenAngle('l', 4, 0, 0.1, 'circOut')
	end
	if curStep > 1005 and curBeat % 2 == 0 and curStep < 1113 then
		noteTweenAngle('d', 5, 0, 0.1, 'circOut')
		noteTweenAngle('u', 6, 0, 0.1, 'circOut')
		--noteTweenAngle('r', 7, 0, 0.1, 'circOut')
		--noteTweenAngle('l', 4, 180, 0.1, 'circOut')
		noteTweenX('blue', 5, defaultPlayerStrumX2, 0.1, 'linear')
		noteTweenX('green', 6, defaultPlayerStrumX1, 0.1, 'linear')
	end
	if curStep > 1005 and curBeat % 2 ~= 0 and curStep < 1113 then
		noteTweenX('blue', 5, defaultPlayerStrumX1, 0.1, 'linear')
		noteTweenX('green', 6, defaultPlayerStrumX2, 0.1, 'linear')
		--noteTweenAngle('r', 7, 0, 0.1, 'circOut')
		--noteTweenAngle('l', 4, 0, 0.1, 'circOut')
	end
	if curBeat % 2 == 0 and curStep > 1129 then
		noteTweenAngle('l', 4, 180, 0.1, 'circOut')
		noteTweenAngle('d', 5, 180, 0.1, 'circOut')
		noteTweenAngle('u', 6, 180, 0.1, 'circOut')
		noteTweenAngle('r', 7, 180, 0.1, 'circOut')
		
	end
	if curBeat % 2 ~= 0 and curStep > 1113 then
		noteTweenAngle('l', 4, 0, 0.1, 'circOut')
		noteTweenAngle('d', 5, 0, 0.1, 'circOut')
		noteTweenAngle('u', 6, 0, 0.1, 'circOut')
		noteTweenAngle('r', 7, 0, 0.1, 'circOut')
	end
end

