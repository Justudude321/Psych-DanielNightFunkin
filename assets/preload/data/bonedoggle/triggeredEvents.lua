function onCreate()
    addCharacterToList('pap-shock', 'dad')
    addCharacterToList('sans-boneswords', 'gf')
end

function onCreatePost()
    for i = 0, 7 do
		local key = (i % 4)
		local name = i > 3 and 'realDefaultPlayerStrum' or 'realDefaultOpponentStrum'
		
		setPropertyFromGroup('strumLineNotes', i, 'x', _G[name .. 'X' .. key])
	end
    
    for i = 8, 11 do
		local key = (i % 4)
		local name = 'defaultLeftStrum'
		
		setPropertyFromGroup('strumLineNotes', i, 'x', _G[name .. 'X' .. key] - 500)
	end
end
-- Sans Cam Pos x.700 y.600
function onStepHit()
    if curStep == 192 then
        for i = 0, 7 do
            local key = (i % 4)
            local name
            if middlescroll then
                name = i > 3 and 'defaultMiddleStrum' or 'defaultRightStrum'
            else
                name = i > 3 and 'defaultRightStrum' or 'defaultMiddleStrum'
            end
            
            noteTweenX('start' .. i, i, _G[name .. 'X' .. key], 1, 'sineInOut')
        end
        
        for i = 8, 11 do
            local key = (i % 4)
            local name = 'defaultLeftStrum'
            
            noteTweenX('start' .. i, i, _G[name .. 'X' .. key], 1, 'sineInOut')
        end
    elseif curStep == 240 then
        for i = 0, 7 do
            local key = (i % 4)
            local name = i > 3 and 'realDefaultPlayerStrum' or 'realDefaultOpponentStrum'
            
            noteTweenX('fellasleep' .. i, i, _G[name .. 'X' .. key], 1.3, 'linear')
        end

        for i = 8, 11 do
            noteTweenAlpha('fellasleep' .. i, i, 0, 1, 'linear')
        end
    elseif curStep == 298 then
        for i = 0, 7 do
            local key = (i % 4)
            local name
            if middlescroll then
                name = i > 3 and 'defaultMiddleStrum' or 'defaultRightStrum'
            else
                name = i > 3 and 'defaultRightStrum' or 'defaultMiddleStrum'
            end
            
            setPropertyFromGroup('strumLineNotes', i, 'x', _G[name .. 'X' .. key])
        end
        for i = 8, 11 do
            if not middlescroll then
                noteTweenAlpha('wakeup' .. i, i, 1, 0.001, 'linear')
            else
                noteTweenAlpha('wakeup' .. i, i, 0.5, 0.001, 'linear')
            end
        end
    elseif curStep == 1244 then
        setProperty('camHUD.alpha', 0)
        if difficultyName == 'Extra' then playAnim('boyfriend', 'hey') end
    end

    if curStep == 687 or curStep == 688 or curStep == 692 or curStep == 697 or curStep == 700 or curStep == 705 then
        playAnim('dad', 'singLEFT-alt')
    elseif curStep == 690 or curStep == 695 or curStep == 698 or curStep == 701 or curStep == 704 then
        playAnim('dad', 'singDOWN-alt')
    elseif curStep == 686 or curStep == 689 or curStep == 691 or curStep == 693 or curStep == 696 or curStep == 702 or curStep == 703 then
        playAnim('dad', 'singUp-alt')
    elseif curStep == 694 or curStep == 699 then
        playAnim('dad', 'singRight-alt')
    end
end

local gfAnimName
local gfAnimDone
function onUpdate()
    gfAnimName = getProperty('gf.animation.curAnim.name')
    gfAnimDone = getProperty('gf.animation.curAnim.finished')
    if gfAnimName == 'fallasleep' then
        triggerEvent('Alt Idle Animation', 'GF', '-sleeping')
    elseif gfAnimName == 'wakeup' then
        triggerEvent('Alt Idle Animation', 'GF', '')
    elseif gfAnimName == 'tribones' and gfAnimDone then
        triggerEvent('Change Character', 'gf', 'sans-boneswords')
    elseif gfAnimName == 'backtomic' and gfAnimDone then
        triggerEvent('Change Character', 'gf', 'sans')
    end
end