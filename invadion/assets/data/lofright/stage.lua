function onCreate()
    setProperty('c-bg.visible', false)

        makeLuaSprite('black', 'hex-front', -800, -500)
		addLuaSprite('black', true)
		scaleObject('black', 60, 60)
		setProperty('black.visible', true)
end
function onEvent(name,value1,value2)
if name == 'Play Animation' then 	

    if value1 == '3' then
        setProperty('black.visible', false);
    end
    end
    end