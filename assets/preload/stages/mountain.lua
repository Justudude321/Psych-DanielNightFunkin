function onCreate()
    makeLuaSprite('snow', 'snow', -900, -500)
    makeLuaSprite('charizard', 'Charizard', 50, -50)
    makeLuaSprite('blastoise', 'Blastoise', -200, 100)
    makeLuaSprite('pokemons', 'Pokemons', 200, 100)

    setLuaSpriteScrollFactor('snow', 0.6, 0.6)
    setLuaSpriteScrollFactor('charizard', 0.7, 0.7)
    setLuaSpriteScrollFactor('blastoise', 0.9, 0.9)
    setLuaSpriteScrollFactor('pokemons', 0.9, 0.9)

    scaleObject('charizard', 0.4, 0.4)
    scaleObject('blastoise', 0.3, 0.3)
    scaleObject('pokemons', 0.3, 0.3)

    addLuaSprite('snow', false)
    addLuaSprite('charizard', false)
    addLuaSprite('blastoise', false)
    addLuaSprite('pokemons', false)
end
