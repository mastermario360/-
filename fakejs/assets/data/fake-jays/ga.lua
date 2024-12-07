function onCreatePost()
    makeLuaText("message", "Fake J'S - ForestZ", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end