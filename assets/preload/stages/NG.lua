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

    makeLuaSprite('BG', 'april_bg_1', -1500, -350);
	setScrollFactor('BG',0.5,0.5);
    addLuaSprite('BG', false);
    makeLuaSprite('BG2', 'april_bg_2', -1500, -350);
	setScrollFactor('BG2',0,0);
    addLuaSprite('BG2', false);
    setScrollFactor('BG2',1.0,1.0);
    makeLuaSprite('BG3', 'april_bg_3', -1500, -350);
	setScrollFactor('BG3',0,0);
    addLuaSprite('BG3', false);
    setScrollFactor('BG3',1.0,1.0);
    makeLuaSprite('BG4', 'april_bg_4', -1500, -350);
	setScrollFactor('BG4',0,0);
    addLuaSprite('BG4', false);
    setScrollFactor('BG4',1.0,1.0);
    makeLuaSprite('BG5', 'april_bg_5', -1500, -350);
	setScrollFactor('BG5',0,0);
    addLuaSprite('BG5', false);
    setScrollFactor('BG5',1.0,1.0);

end
