function onCreate()

	makeLuaSprite('','bg/blanco', -550,-580)
	scaleObject('backstage', 1.55, 1.55)
	updateHitbox('backstage')
	setProperty('backstage.antialiasing', false)
	addLuaSprite('backstage',false)
	close(true)
  setProperty('gfGroup.visible', true)

end