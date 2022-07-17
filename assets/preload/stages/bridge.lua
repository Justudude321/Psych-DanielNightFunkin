
function onCreate()

    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,80,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

    --bars

    makeLuaSprite('forest', 'background', -900, -1200);
	setScrollFactor('forest',1.0,1.0);
    makeLuaSprite('bridge', 'bridge', -900, -1200);
	setScrollFactor('bridge',1.0,1.0);
    makeLuaSprite('grass', 'foreground', -900, -1200);
	setScrollFactor('grass',1.0,1.0);
    addLuaSprite('forest', false);
    addLuaSprite('bridge', false);
    addLuaSprite('grass', false);

    makeAnimatedLuaSprite('Crowd','AceCrowd', -210, -70)
        addAnimationByPrefix('Crowd','AceCrowd','',22,true);
    	objectPlayAnimation('Crowd','AceCrowd',true);
	setLuaSpriteScrollFactor('Crowd', 1.0, 1.0);
    addLuaSprite('Crowd', false);

end

function onUpdate()

    triggerEvent('Camera Follow Pos',1400,370)

end