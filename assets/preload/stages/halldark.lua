function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'halldark', -600, -300);
	scaleObject('stageback', 1.75, 1.75);

	addLuaSprite('stageback', false);
	
	makeLuaSprite('battlebox', 'Battle', -400, -800);
	scaleObject('battlebox', 1, 1);
	addLuaSprite('battlebox', false);
	setProperty('battlebox.alpha', 0)
	--close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onUpdate()
if curStep == 376 or curStep == 1148 then
setProperty('stageback.alpha', 0)
setProperty('battlebox.alpha', 1)
end
if curStep == 896 or curStep == 1408 then
setProperty('defaultCamZoom', 0.9)
setProperty('stageback.alpha', 1)
setProperty('battlebox.alpha', 0)
end
end