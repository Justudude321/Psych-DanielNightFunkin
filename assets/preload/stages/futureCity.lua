function onCreate()
	-- background shit
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-city'); --Character json file for the death animation
	
	makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,80,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1300,80,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

	makeLuaSprite('cyber', 'uhh', -500, -250);
	setScrollFactor('cyber', 0.5, 0.5);
	addLuaSprite('cyber', false);

	
	makeLuaSprite('floor', 'ground', -250, -150);
	setScrollFactor('floor', 0.9, 0.9);
	addLuaSprite('floor', false);

	makeAnimatedLuaSprite('daPeeps', 'CG_bops', -370,300)
	addAnimationByPrefix('daPeeps', 'bounce', 'bops', 24)
	addLuaSprite('daPeeps',false)
	objectPlayAnimation('daPeeps', 'bounce',false)

	if not lowQuality then
		makeLuaSprite('roof', 'thing roof', -300, -100);
		setScrollFactor('roof', 0.9, 0.9);
		addLuaSprite('roof', false);
	end

	if not lowQuality then
		makeAnimatedLuaSprite('rainDrop', 'rain', -510,-300)
		addAnimationByPrefix('rainDrop', 'bounce', 'rain tho',48,true)
		addLuaSprite('rainDrop',true)
		objectPlayAnimation('rainDrop', 'bounce',false)
		setBlendMode('rainDrop', 'overlay')
		targetAlpha = tonumber(0.2);
			setProperty('rainDrop.alpha', targetAlpha);
	end

	if not lowQuality then
		makeLuaSprite('rainEffect', 'droplets', -100, -100);
		setScrollFactor('rainEffect', 0.9, 0.9);
		addLuaSprite('rainEffect', true);
		setScrollFactor('rainEffect', 0, 0);
		targetAlpha = tonumber(0.95);
			setProperty('rainEffect.alpha', targetAlpha);
		setBlendMode('rainEffect', 'add')
	end

	--precaching shitt
	precacheImage('uhh');
	precacheImage('ground');
	precacheImage('thing roof');
	precacheImage('rain');
	precacheImage('CG_bops');
	precacheImage('droplets');


end

function onBeatHit()
	objectPlayAnimation('daPeeps', 'bounce',true)

	if getProperty('dad.animation.curAnim.name') == 'idle' then
		characterPlayAnim('dad','idle',true)
	end

	if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
		characterPlayAnim('boyfriend','idle',true)
	end
end
