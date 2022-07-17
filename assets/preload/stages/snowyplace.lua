function onCreate()
    makeLuaSprite('bg', 'Papyrus_BG', -100, 0)
    addLuaSprite('bg', false)
    setObjectOrder('gfGroup', getObjectOrder('dadGroup') + 1)
end