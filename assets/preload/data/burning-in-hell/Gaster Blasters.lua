canMove = false
debuginfo = false
blastercooldown = false
blastercooldown1 = false
blastercooldown2 = false
function onCreate()
precacheImage('Gaster_blasterss')
	makeLuaSprite('black', '', -600, -300)
	makeGraphic('black',6000,6000,'000000')
	addLuaSprite('black', true)
	setProperty('black.alpha', 0)

	makeLuaSprite('soul', 'heart', 600, 375)
	addLuaSprite('soul', true)
	setObjectCamera('soul', 'hud')
	scaleObject('soul', 0.5, 0.5)
	setProperty('soul.alpha', 0)
	
	soulmidpoint = 19

for i = 1,3 do

	makeLuaSprite('lastpoint'.. i, 'heart', 600, 0)
	addLuaSprite('lastpoint'.. i, true)
	setObjectCamera('lastpoint'.. i, 'hud')
	scaleObject('lastpoint'.. i, 0.5, 0.5)
	setProperty('lastpoint'.. i.. '.angle', 0)
	setProperty('lastpoint'.. i.. '.alpha', 0)

end
	makeLuaSprite('pointer', 'heart', 600, 0)
	addLuaSprite('pointer', true)
	setObjectCamera('pointer', 'hud')
	scaleObject('pointer', 0.5, 0.5)
	setProperty('pointer.angle', 0)
	setProperty('pointer.alpha', 0)
end

function onBeatHit()


if curBeat % 4 == 0 and blastercooldown2 == false then
end

if curBeat % 6 == 0 and blastercooldown2 == false and canMove == true then
if debuginfo == true then
debugPrint('Point 3 placed at ', x3, ',', y3)
end
	x3 = getProperty('soul.x')
	y3 = getProperty('soul.y')
	setProperty('lastpoint3.x', x3)
	setProperty('lastpoint3.y', y3)

	playSound('readygas', 0.5)
	makeAnimatedLuaSprite('blaster3', 'Gaster_blasterss', x3-850, y3-35)
	addAnimationByPrefix('blaster3', 'attack', 'fefe instance 1', 24, false);
	addLuaSprite('blaster3', true)
	setObjectCamera('blaster3', 'hud')
	scaleObject('blaster3', 0.25, 0.25)
	setProperty('blaster3.angle', 90)
runTimer('shootsound2', 1, 1)
runTimer('removeoldblaster2', 1.75, 1)
runTimer('blastercooldown2', 2, 1)
blastercooldown2 = true
end

if curBeat % 2 == 0 and blastercooldown1 == false and canMove == true then
if debuginfo == true then
debugPrint('Point 2 placed at ', x2, ',', y2)
end
	x2 = getProperty('soul.x')
	y2 = getProperty('soul.y')
	setProperty('lastpoint2.x', x2)
	setProperty('lastpoint2.y', y2)

	playSound('readygas', 0.5)
	makeAnimatedLuaSprite('blaster2', 'Gaster_blasterss', x2-800, y2-35)
	addAnimationByPrefix('blaster2', 'attack', 'fefe instance 1', 24, false);
	addLuaSprite('blaster2', true)
	setObjectCamera('blaster2', 'hud')
	scaleObject('blaster2', 0.25, 0.25)
	setProperty('blaster2.angle', 180)
runTimer('shootsound1', 1, 1)
runTimer('removeoldblaster1', 1.75, 1)
runTimer('blastercooldown1', 2, 1)
blastercooldown1 = true
end

if curBeat % 4 == 0 and blastercooldown == false and canMove == true then
if debuginfo == true then
debugPrint('Point 1 placed at ', x1, ',', y1)
end
	x1 = getProperty('soul.x')
	y1 = getProperty('soul.y')
	setProperty('lastpoint1.x', x1)
	setProperty('lastpoint1.y', y1)

	playSound('readygas', 0.5)
	makeAnimatedLuaSprite('blaster', 'Gaster_blasterss', x1-800, y1-35)
	addAnimationByPrefix('blaster', 'attack', 'fefe instance 1', 24, false);
	addLuaSprite('blaster', true)
	setObjectCamera('blaster', 'hud')
	scaleObject('blaster', 0.25, 0.25)
runTimer('shootsound', 1, 1)
runTimer('removeoldblaster', 1.75, 1)
runTimer('blastercooldown', 2, 1)
blastercooldown = true
end
end

function onUpdate()-- 0 and 1280
if hurties2 == true and getProperty('soul.alpha') == 1 and getProperty('soul.x') >= x3-50 and getProperty('soul.x') <= x3+50 and getProperty('soul.y') >= 0 and getProperty('soul.y') <= 700 then
setProperty('health', getProperty('health')-0.01)
playSound('hurt', 0.5)
end
if hurties1 == true and getProperty('soul.alpha') == 1 and getProperty('soul.x') >= 0 and getProperty('soul.x') <= 1280 and getProperty('soul.y') >= y2-45 and getProperty('soul.y') <= y2+45 then
setProperty('health', getProperty('health')-0.01)
playSound('hurt', 0.5)
end
if hurties == true and getProperty('soul.alpha') == 1 and getProperty('soul.x') >= 0 and getProperty('soul.x') <= 1280 and getProperty('soul.y') >= y1-45 and getProperty('soul.y') <= y1+45 then
setProperty('health', getProperty('health')-0.01)
playSound('hurt', 0.5)
end
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') and debuginfo == true then
setProperty('lastpoint1.alpha', 0)
setProperty('lastpoint2.alpha', 0)
setProperty('lastpoint3.alpha', 0)
setProperty('pointer.alpha', 0)
debugPrint('Debug soul info is now off.')
debuginfo = false
elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') and debuginfo == false then
setProperty('lastpoint1.alpha', 0.25)
setProperty('lastpoint2.alpha', 0.25)
setProperty('lastpoint3.alpha', 0.25)
setProperty('pointer.alpha', 1)
debugPrint('Debug soul info is now on.')
debuginfo = true
end
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.J') then
debugPrint('Healed player.')
playSound('genocide')
setProperty('health', getProperty('health')+1)
end
doTweenAngle('point at him', 'pointer', (math.abs(getProperty('soul.y') - getProperty('soul.x'))), 0.1, 'circinout')
if canMove == true then
cameraSetTarget('boyfriend');
if getPropertyFromClass('flixel.FlxG', 'keys.pressed.W') then
setProperty('soul.y', getProperty('soul.y')-5)
end
if getPropertyFromClass('flixel.FlxG', 'keys.pressed.S') then
setProperty('soul.y', getProperty('soul.y')+5)
end
if getPropertyFromClass('flixel.FlxG', 'keys.pressed.A') then
setProperty('soul.x', getProperty('soul.x')-5)
end
if getPropertyFromClass('flixel.FlxG', 'keys.pressed.D') then
setProperty('soul.x', getProperty('soul.x')+5)
end
end
if curStep == 394 or curStep == 657 then
canMove = true
runTimer('playthesoundoncedamnit', 0.1, 1)
setProperty('soul.x', 600)
setProperty('soul.y', 375)
doTweenAlpha('fadeinsoul', 'soul', 1, 0.5, 'circinout')
doTweenAlpha('fadeinblack', 'black', 0.75, 1, 'circinout')
end
if curStep == 506 or curStep == 768 then
canMove = false
doTweenAlpha('fadeinsoul', 'soul', 0, 0.5, 'circinout')
doTweenAlpha('fadeinblack', 'black', 0, 1, 'circinout')
--	i = 1
--	makeAnimatedLuaSprite('blaster'.. i, 'Gaster_blasterss', getProperty('soul.x'), getProperty('soul.y'))
--	addAnimationByPrefix('blaster'.. i, 'attack', 'fefe instance 1', 24, false);
--	addLuaSprite('blaster'.. i, true)
--	setObjectCamera('blaster'.. i, 'hud')
--	scaleObject('blaster'.. i, 0.5, 0.5)

end

end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'playthesoundoncedamnit' then
	playSound('countdown finish', 1)
	end

	if tag == 'removeoldblaster2' then
	setProperty('blaster3.alpha', 0)
	hurties2 = false
	end
	if tag == 'shootsound2' then
	playSound('shootgas', 0.5)
	hurties2 = true
	end
	if tag == 'blastercooldown2' then
	blastercooldown2 = false
	end

	if tag == 'removeoldblaster1' then
	hurties1 = false
	setProperty('blaster2.alpha', 0)
	end
	if tag == 'shootsound1' then
	playSound('shootgas', 0.5)
	hurties1 = true
	end
	if tag == 'blastercooldown1' then
	blastercooldown1 = false
	end

	if tag == 'removeoldblaster' then
	hurties = false
	setProperty('blaster.alpha', 0)
	end
	if tag == 'shootsound' then
	playSound('shootgas', 0.5)
	hurties = true
	end
	if tag == 'blastercooldown' then
	blastercooldown = false
	end
	if tag == 'watch' then
	x = getProperty('soul.x')
	y = getProperty('soul.y')
	setProperty('pointer.x', x)
	setProperty('pointer.y', y)
	end
end