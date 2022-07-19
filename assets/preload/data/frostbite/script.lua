local visible = false

function onCreate()
    makeAnimatedLuaSprite('screamer', 'bob', 0, 0)
    addAnimationByPrefix('screamer', 'scream', 'flicker', 24, true)
    scaleObject('screamer', 1, 1)
    setProperty('screamer.alpha', 0)
    setObjectCamera('screamer', 'other')

    addCharacterToList('dead-red')

    makeLuaSprite('dark', 'dark', 0, 0)

    makeGraphic('dark', 1280, 720, '000000')
    addLuaSprite('dark', true)
    addLuaSprite('screamer', true)
    setObjectCamera('dark', 'other')
    setProperty('dark.alpha', 0)

    setProperty('dad.alpha', 0)

    setProperty('pokemons.alpha', 0)
    setProperty('charizard.alpha', 0)
    setProperty('blastoise.alpha', 0)

    setProperty('iconP2.alpha', 0)

    makeLuaSprite('light', 'light', 0, 0)
    makeGraphic('light', 1280, 720, 'FFFFFF')
    addLuaSprite('light', true)
    setProperty('light.alpha', 0)
    setObjectCamera('light', 'other')

    makeLuaSprite('bond', 'destiny-bond', 150, 150)
    addLuaSprite('bond', true)
    setObjectCamera('bond', 'other')
    setProperty('bond.alpha', 0)

end

function onUpdate()
    if visible == false then
        for i=0,7 do
            noteTweenAlpha(i+16, i, 0, 4-7)
            noteTweenAlpha(i+16, i, 0, 0.1)
        end
    end
end

function onSongStart()
	noteTweenX("NoteMove1", 0, 732, 0.0001, cubeInOut)
	noteTweenX("NoteMove2", 1, 844, 0.0001, cubeInOut)
	noteTweenX("NoteMove3", 2, 956, 0.0001, cubeInOut)
	noteTweenX("NoteMove4", 3, 1068, 0.0001, cubeInOut)

    noteTweenX("NoteMove5", 4, 92, 0.0001, cubeInOut)
	noteTweenX("NoteMove6", 5, 204, 0.0001, cubeInOut)
	noteTweenX("NoteMove7", 6, 316, 0.0001, cubeInOut)
	noteTweenX("NoteMove8", 7, 428, 0.0001, cubeInOut)
end

function onStepHit()

    if curStep == 23 then
        doTweenAlpha('dadtween', 'dad', 1, 0.3, 'quadInOut')
        doTweenAlpha('icontwn', 'iconP2', 1, 0.3, 'quadInOut')
    end

    if curStep == 34 then
        doTweenAlpha('pokemonstwn', 'pokemons', 1, 2.5, 'quadInOut')
        doTweenAlpha('charizardtwn', 'charizard', 1, 2.5, 'quadInOut')
        doTweenAlpha('bastoisetwn', 'blastoise', 1, 2.5, 'quadInOut')

        visible = true
        for i=0,7 do
            noteTweenAlpha(i+16, i, 1, 4-7)
            noteTweenAlpha(i+16, i, 1, 0.5)
        end
    end

    if curStep == 662 then
        doTweenAlpha('darktween', 'dark', 1, 0.5, 'quadInOut')
    end

    if curStep == 666 then
        setProperty('screamer.alpha', 1)
        setProperty('camHUD.alpha', 0)
        triggerEvent('Change Character', '1', 'dead-red')
    end
    
    if curStep == 674 then
        setProperty('camHUD.alpha', 1)
        setProperty('screamer.alpha', 0)
        setProperty('dark.alpha', 0)
    end

end