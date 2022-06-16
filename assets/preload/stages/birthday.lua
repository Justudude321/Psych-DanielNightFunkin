
local followchars = true;
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

    makeAnimatedLuaSprite('BB','BBs_assest', -190, -150)
        addAnimationByPrefix('BB','BBs_assest','',24,true);
    	objectPlayAnimation('BB','BBs_assest',true);
	setLuaSpriteScrollFactor('BB', 1.0, 1.0);
    makeAnimatedLuaSprite('Fizz','Fizz_assest', 1225, -30)
        addAnimationByPrefix('Fizz','Fizz_assest','',20,true);
    	objectPlayAnimation('Fizz','Fizz_assest',true);
	setLuaSpriteScrollFactor('Fizz', 1.0, 1.0);
    makeAnimatedLuaSprite('Hexar','Hexar_assest', -575, 400)
        addAnimationByPrefix('Hexar','Hexar_assest','',24,true);
    	objectPlayAnimation('Hexar','Hexar_assest',true);
	setLuaSpriteScrollFactor('Hexar', 1.0, 1.0);
    makeAnimatedLuaSprite('Jester','Jester_assest', -490, -90)
        addAnimationByPrefix('Jester','Jester_assest','',24,true);
    	objectPlayAnimation('Jester','Jester_assest',true);
	setLuaSpriteScrollFactor('Jester', 1.0, 1.0);
    makeAnimatedLuaSprite('Maze','Maze_assest', 700, -150)
        addAnimationByPrefix('Maze','Maze_assest','',24,true);
    	objectPlayAnimation('Maze','Maze_assest',true);
	setLuaSpriteScrollFactor('Maze', 1.0, 1.0);
    makeAnimatedLuaSprite('WassabiSoja','WassabiSoja_assest', 1190, 350)
        addAnimationByPrefix('WassabiSoja','WassabiSoja_assest','',12,true);
    	objectPlayAnimation('WassabiSoja','WassabiSoja_assest',true);
	setLuaSpriteScrollFactor('WassabiSoja', 1.0, 1.0);
    makeAnimatedLuaSprite('Whitty','Whitty_assest', 1275, 200)
        addAnimationByPrefix('Whitty','Whitty_assest','',20,true);
    	objectPlayAnimation('Whitty','Whitty_assest',true);
	setLuaSpriteScrollFactor('Whitty', 1.0, 1.0);

    makeLuaSprite('Carol home', 'Carols_house1', -700, -275);
	setScrollFactor('Carol home',1.0,1.0);
    makeLuaSprite('Carol home2', 'Carols_house2', 900, -180);
	setScrollFactor('Carol home2',1.0,1.0);
    
    addLuaSprite('Carol home2', false);
    addLuaSprite('Fizz', false);
    addLuaSprite('Carol home', false);
    addLuaSprite('BB', false);
    addLuaSprite('Jester', false);
    addLuaSprite('Hexar', false);
	addLuaSprite('Maze', false);
    addLuaSprite('Whitty', false);
    addLuaSprite('WassabiSoja', false);
    scaleLuaSprite('Whitty',0.75,0.75)
    scaleLuaSprite('WassabiSoja',0.85,0.85)

	precacheImage('BBs_assest');
	precacheImage('Fizz_assest');
	precacheImage('Hexar_assest');
    precacheImage('Jester_assest');
	precacheImage('Maze_assest');
	precacheImage('WassabiSoja_assest');
    precacheImage('Whitty_assest');
	precacheImage('Carols_house1');
	precacheImage('Carols_house2');

end

function onUpdate()

    triggerEvent('Camera Follow Pos',600,370)

end