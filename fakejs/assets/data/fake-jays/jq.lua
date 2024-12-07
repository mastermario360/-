function onCreate()
    makeLuaSprite('bg','background1', -422, -90)
    scaleObject('bg', 2, 2)
    addLuaSprite('bg')

    makeLuaSprite('stageFront', 'stagefront', -650, 600)
    scaleObject('stageFront', 10, 10)
    addLuaSprite('stageFront')

    makeLuaSprite('stageLight', 'stage_light', -125, -100)
    scaleObject('stageLight', 1.1, 1.1)
    addLuaSprite('stageLight')

    makeLuaSprite('stageLight2', 'stage_light', 1225, -100)
    scaleObject('stageLight2', 1.1, 1.1)
    addLuaSprite('stageLight2')

    makeLuaSprite('stageCurtains', 'stagecurtains', -500, -300)
    scaleObject('stageCurtains', 0.9, 0.9)
    setScrollFactor('stageCurtains', 0.9, 0.9)
    addLuaSprite('stageCurtains')

    setProperty('bg.visible', false)
    setProperty('stageFront.visible', false)
    setProperty('stageLight.visible', false)
    setProperty('stageLight2.visible', false)
    setProperty('stageCurtains.visible', false)
end
function onBeatHit()
    if curBeat == 416 then
        setProperty('bg.visible', true)
        setProperty('light.visible', true)
        setProperty('stageFront.visible', false)
        setProperty('stageLight.visible', false)
        setProperty('stageLight2.visible', false)
        setProperty('stageCurtains.visible', false)
    end
end