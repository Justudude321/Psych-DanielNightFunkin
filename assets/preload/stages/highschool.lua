local followchars = true;
local xx = 520.95;
local yy = 2100;
local xx2 = 1300.9;
local yy2 = 2100;
local ofs = 50;
local del = 0;
local del2 = 0;

function onCreate()

	makeLuaSprite('highSchool', 'HighSchool', -600,650);
	addLuaSprite('highSchool', false);
	makeAnimatedLuaSprite('gang', 'gangbop', -400, 1500);
	addAnimationByPrefix('gang', 'bounce','Gang Bottom Boppers', 24, true);
	addLuaSprite('gang', false);
	objectPlayAnimation('gang', 'bounce', true);
	makeLuaSprite('ground', 'barrera', -600, 750);
	addLuaSprite('ground', false);
end
--jenny/barrera