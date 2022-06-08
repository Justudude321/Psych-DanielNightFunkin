local xx = 700;
local yy = 350;
local xx2 = 1000;
local yy2 = 500;
local ofs = 15;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    setProperty('defaultCamZoom',0.6)
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

    -- makeLuaSprite('glow', '15', -50, 0);
	-- setScrollFactor('glow',0,0);
    -- addLuaSprite('glow', false);
    -- makeLuaSprite('glow2', '52', -50, 0);
	-- setScrollFactor('glow2',0,0);
    -- addLuaSprite('glow2', false);
    -- makeLuaSprite('glow3', 'BGLAYER', -50, 0);
	-- setScrollFactor('glow3',0,0);
    -- addLuaSprite('glow3', false);

    makeAnimatedLuaSprite('bops','bopper1', -40, 150)
        addAnimationByPrefix('bops','bopper1','',12,true);
    	objectPlayAnimation('bops','bopper1',true);
	setLuaSpriteScrollFactor('bops', 1.0, 1.0);
   	makeAnimatedLuaSprite('bops2','bopper2', -210, 150)
        addAnimationByPrefix('bops2','bopper2','',12,true);
    	objectPlayAnimation('bops2','bopper2',true);
	setLuaSpriteScrollFactor('bops2', 1.0, 1.0);
    makeAnimatedLuaSprite('night','CGBG', -925, -950)
        addAnimationByPrefix('night','CGBG','',6,true);
    	objectPlayAnimation('night','CGBG',true);
	setLuaSpriteScrollFactor('night', 1.0, 1.0);

    addLuaSprite('night', false);
    addLuaSprite('bops', false);
	addLuaSprite('bops2', false);
    scaleLuaSprite('night',1.3,1.3)
    scaleLuaSprite('bops',1.3,1.3)
    scaleLuaSprite('bops2',1.3,1.3)

end
