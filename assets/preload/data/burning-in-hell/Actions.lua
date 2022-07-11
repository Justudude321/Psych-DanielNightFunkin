spacepressed = false
genocide = false
cooldown = false
notindodge = true
canaction = true
function onCreate()
	makeLuaSprite('blacktr', '', 0, 0)
	makeGraphic('blacktr',1280,720,'000000')
	addLuaSprite('blacktr', false)
	setProperty('blacktr.alpha', 0)
	setObjectCamera('blacktr', 'hud')
addCharacterToList('bfbattle', 'boyfriend')
addCharacterToList('sansbattle', 'dad')
addCharacterToList('gf', 'gf')
precacheImage('Battle')
end
function onCreatePost()
	
setProperty('gf.visible', false)
	makeAnimatedLuaSprite('bfdodge', 'Cardodge', getProperty('boyfriend.x')-15, getProperty('boyfriend.y')+55)
	addAnimationByPrefix('bfdodge', 'dodge', 'Dodge instance 1', 24, false);
	addLuaSprite('bfdodge', true);
	setProperty('bfdodge.visible', false);

	makeAnimatedLuaSprite('bfattack', 'characters/Chara', getProperty('boyfriend.x')-1102, getProperty('boyfriend.y')+23)
	addAnimationByPrefix('bfattack', 'attack', '0BF attack copy instance 1', 24, false);
	addLuaSprite('bfattack', true);
	setProperty('bfattack.visible', false);

	makeAnimatedLuaSprite('sansdodge', 'characters/Sans_Phase_3', getProperty('dad.x')-120, getProperty('dad.y')-20)
	addAnimationByPrefix('sansdodge', 'dodge', 'SansDodge instance 1', 24, false);
	addAnimationByPrefix('sansdodge', 'dodgeT', 'SansDodgeTired instance 1', 24, false);
	addLuaSprite('sansdodge', true);
	setProperty('sansdodge.visible', false);

	makeAnimatedLuaSprite('bones', 'Cardodge', getProperty('boyfriend.x')-250, getProperty('boyfriend.y')-50)
	addAnimationByPrefix('bones', 'bones', 'Bones boi instance 1', 24, false);
	addLuaSprite('bones', true);
	setProperty('bones.visible', false);

	makeAnimatedLuaSprite('alarm', 'Cardodge', getProperty('boyfriend.x')-250, getProperty('boyfriend.y')-50)
	addAnimationByPrefix('alarm', 'alarm', 'Alarm instance 1', 24, false);
	addLuaSprite('alarm', true);
	setProperty('alarm.visible', false);

	makeAnimatedLuaSprite('dodge', 'Notmobilegameanymore', 0,300)
	addAnimationByPrefix('dodge', 'idle', 'Dodge instance 1', 24, true);
	addAnimationByPrefix('dodge', 'click', 'Dodge click instance 1', 24, false);
	scaleObject('dodge', 0.5, 0.5);
	setObjectCamera('dodge', 'hud')
	addLuaSprite('dodge', true)

	makeAnimatedLuaSprite('attack', 'Notmobilegameanymore', 0,200)
	addAnimationByPrefix('attack', 'idle', 'Attack instance 1', 24, true);
	addAnimationByPrefix('attack', 'click', 'Attack Click instance 1', 24, false);
	addAnimationByPrefix('attack', 'cooldown', 'AttackNA instance 1', 24, false);
	scaleObject('attack', 0.5, 0.5);
	setObjectCamera('attack', 'hud')
	addLuaSprite('attack', true)
end

function onCountdownTick(swagCounter)
	if swagCounter == 0 then
		setProperty('blacktr.alpha', 0)
		playSound('countdown', 1)
	end
	if swagCounter == 1 then
		playSound('countdown', 1)
	end
	if swagCounter == 2 then
		playSound('countdown', 1)
	end
	if swagCounter == 3 then
		playSound('countdown finish', 1)
	end
end

function onUpdate(elapsed)
if curStep == 159 or curStep == 241 or curStep == 912 or curStep == 938 or curStep == 1028 or curStep == 1103 or curStep == 1431 or curStep == 1542 or curStep == 1571 then
runTimer('ohshit', 0.1, 1)
end
if curStep == 376 or curStep == 890 or curStep == 1148 or curStep == 1400 then
canaction = false
setProperty('gf.visible', true)
setProperty('dad.visible', false)
runTimer('iwishplayingsoundsonastepwaseasier', 0.1, 1)
setProperty('blacktr.alpha', 1)
doTweenAlpha('dodgeAlphaOut', 'dodge', 0, 0.5, 'circInOut')
doTweenAlpha('attackAlphaOut', 'attack', 0, 0.5, 'circInOut')
setProperty('defaultCamZoom', 0.4)
end
if curStep == 380 or curStep == 896 or curStep == 1152 or curStep == 1408 then
setProperty('blacktr.alpha', 0)
runTimer('iwishplayingsoundsonastepwaseasier', 0.1, 1)
end
if curStep == 890 or curStep == 1400 then
doTweenAlpha('dodgeAlphaOut', 'dodge', 1, 0.5, 'circInOut')
doTweenAlpha('attackAlphaOut', 'attack', 1, 0.5, 'circInOut')
end
if curStep == 896 or curStep == 1408 then
canaction = true
setProperty('dad.visible', true)
setProperty('gf.visible', false)
end
end
function onUpdatePost(elapsed)
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and canaction == true then
spacepressed = true
runTimer('remove that shit', 1, 1)
playSound('dodge', 0.75)
end
if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SHIFT') and canaction == true and cooldown == false and notindodge == true and curStep < 782 then
cooldown = true
genocide = true
objectPlayAnimation('attack', 'click');
setProperty('boyfriend.visible', false);
setProperty('bfattack.visible', true);
objectPlayAnimation('bfattack', 'attack');
runTimer('nomorespecialanim', 1, 1)
runTimer('sansdodge', 0.5, 1)
randomsound = getRandomInt(1, 3)
playSound('Throw'.. randomsound, 0.75)
runTimer('attackcooldown', 6, 1)
objectPlayAnimation('attack', 'cooldown');
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'dodge pressed' then
	objectPlayAnimation('dodge', 'idle');
	end

	if tag == 'dodge anim' then
	setProperty('boyfriend.visible', true);
	setProperty('bfdodge.visible', false);
	notindodge = true
	spacepressed = false
	end
	
	if tag == 'ohshit' then
	notindodge = false
	playSound('notice', 0.75)
	setProperty('alarm.visible', true);
	objectPlayAnimation('alarm', 'alarm');
	runTimer('thebonezone', 0.5, 1)
	end

	if tag == 'thebonezone' and spacepressed == true then
	objectPlayAnimation('dodge', 'click');
	runTimer('dodge pressed', 0.1,1)
	setProperty('boyfriend.visible', false);
	setProperty('bfdodge.visible', true);
	objectPlayAnimation('bfdodge', 'dodge');
	runTimer('dodge anim', 1, 1)
	playSound('sansattack', 0.75)
	playSound('dodge', 0.75)
	setProperty('bones.visible', true);
	objectPlayAnimation('bones', 'bones');
	runTimer('goawayalarm', 0.1, 1)
	runTimer('goawaybones', 1, 1)
	elseif tag == 'thebonezone' then
	playSound('sansattack', 0.75)
	setProperty('bones.visible', true);
	objectPlayAnimation('bones', 'bones');
	runTimer('goaway', 0.1, 1)
	setProperty('health', 0)
	end

	if tag == 'goawayalarm' then
	setProperty('alarm.visible', false);
	end

	if tag == 'goawaybones' then
	setProperty('bones.visible', false);
	end
	
	if tag == 'remove that shit' then
	spacepressed = false
	end

	if tag == 'nomorespecialanim' then
	setProperty('boyfriend.visible', true);
	setProperty('bfattack.visible', false);
	end

	if tag == 'attackcooldown' then
	objectPlayAnimation('attack', 'idle');
	cooldown = false
	end

	if tag == 'sansdodge' then
	runTimer('nomorespecialanimdad', 1.25, 1)
	playSound('dodge', 0.75)
	setProperty('dad.visible', false);
	setProperty('sansdodge.visible', true);
	objectPlayAnimation('sansdodge', 'dodge');
	end

	if tag == 'nomorespecialanimdad' then
	setProperty('dad.visible', true);
	setProperty('sansdodge.visible', false);
	end

	if tag == 'iwishplayingsoundsonastepwaseasier' then
	playSound('teleport', 2)
	end
end