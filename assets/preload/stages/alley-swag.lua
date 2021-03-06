local xx = 700;
local yy = 350;
local xx2 = 1000;
local yy2 = 500;
local ofs = 15;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()

    setPropertyFromClass('GameOverSubstate', 'characterName', 'daniel-swag');
    
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx2'); --First death
	
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver2'); --Death loop
	
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd2'); --Retry Confirm

    -- additions
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

	-- Whitback
   	makeAnimatedLuaSprite('stageback','alley_swag_wall', -870, -360)
    	addAnimationByPrefix('stageback','alley_swag_wall','wal style change',24,true);
    	objectPlayAnimation('stageback','alley_swag_wall',false);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);

   	makeAnimatedLuaSprite('stagefront','alley_swag_ground', -600, -350)
    	addAnimationByPrefix('stagefront','alley_swag_ground','flo style change',24,true);
    	objectPlayAnimation('stagefront','alley_swag_ground',false);
	setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);

    precacheImage('alley_swag_wall');
	precacheImage('alley_swag_ground');

end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'danceLeft' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
          end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end