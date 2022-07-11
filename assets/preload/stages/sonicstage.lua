function onCreate()
precacheImage("main stage spoopy")
precacheImage("blackfadecrap")
precacheImage("mightylineanim")

   makeLuaSprite('background ladders', 'background ladders', -200, -290)
   setScrollFactor('background ladders', 0.9, 0.9)
	addLuaSprite('background ladders', false)

makeLuaSprite('icicles background', 'icicles background', -121, -75)
   	setScrollFactor('icicles background', 0.9, 0.9)
addLuaSprite('icicles background', false)

   makeLuaSprite('main stage', 'main stage', -490, 6)
	setScrollFactor('main stage', 0.9, 0.9)

makeLuaSprite('icicles foreground', 'icicles foreground', -576, -200)
	setScrollFactor('icicles foreground', 2, 2)
scaleObject('icicles foreground', 1.3, 1.3)

	addLuaSprite('background ladders', false)
	addLuaSprite('icicles backgrounds', false)
	addLuaSprite('main stage', false)
        addLuaSprite('icicles foreground', true)

end

function onUpdate () -- update shit

if curStep == 384 then -- ass

        makeAnimatedLuaSprite('blackfadecrapin','blackfadecrap', -490, 6)addAnimationByPrefix('blackfadecrapin','dance','blackfade',24,true)
        objectPlayAnimation('blackfadecrapin','dance',true)
        setScrollFactor('blackfadecrapin', 0.9, 0.9);
        addLuaSprite('blackfadecrapin', true)
end

        if curStep == 408 then -- curstep shits
removeLuaSprite("main stage", true);

        makeLuaSprite('main stage spoopy', 'main stage spoopy', -490, 6)
        setScrollFactor('main stage spoopy', 0.9, 0.9)
	addLuaSprite('main stage spoopy', false)

end
   if curStep == 399 then -- curstep shits

 removeLuaSprite("blackfadecrapin", true);

makeLuaSprite('black', 'black', -300, 100)
        setScrollFactor('black', 0.9, 0.9)
	addLuaSprite('black', true)

end
if curStep == 448 then -- curstep shits

 removeLuaSprite("black", true);
end
if curStep == 1088 then -- curstep shits

        makeAnimatedLuaSprite('mightylineanim','mightyline', 420, 490)addAnimationByPrefix('mightylineanim','dance','LyricsCrap',24,true)
        objectPlayAnimation('mightylineanim','dance',true)
        setScrollFactor('mightylineanim', 0, 0);
scaleObject('mightylineanim', 0.6, 0.6)
  addLuaSprite('mightylineanim', true)

doTweenAlpha('hudFunne', 'camHUD', 0, 0.2, 'linear')
doTweenZoom('ZoomCam', 'camGame', 1.2, 1.2, 'cubeOut');
setProperty('defaultCamZoom', 1.2)

end
if curStep == 1216 then -- curstep shits

 removeLuaSprite("mightylineanim", true);
end
if curStep == 1206 then -- curstep shits

doTweenAlpha('hud', 'camHUD', 1, 0.1, 'linear')
end
if curStep == 1344 then -- curstep shits

doTweenZoom('ZoomCam', 'camGame', 0.9, 0.9, 'cubeOut');
setProperty('defaultCamZoom', 0.9)
end
if curStep == 1760 then -- curstep shits
doTweenZoom('ZoomCam', 'camGame', 1, 1, 'cubeOut');
end
if curStep == 1765 then -- curstep shits
doTweenZoom('ZoomCam', 'camGame', 1.3, 1.3, 'cubeOut');
end
if curStep == 1770 then -- curstep shits
doTweenZoom('ZoomCam', 'camGame', 1.5, 1.5, 'cubeOut');
end
if curStep == 1776 then -- curstep shits
doTweenZoom('ZoomCam', 'camGame', 1.7, 1.7, 'cubeOut');
setProperty('defaultCamZoom', 1.7)
end
end