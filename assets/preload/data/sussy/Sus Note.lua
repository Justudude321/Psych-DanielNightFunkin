local count = 1
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Sus Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'SUSNOTE_assets');

			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Sus Note' then
		characterPlayAnim('boyfriend', 'hurt', true);
		playSound('Vineboom');-- Pride and joy
		playSound('Vineboom');

		--wont go past 4, might look weird but it's fine
		if count == 4 then
		makeLuaSprite('dark4', 'ElecticalTamper4', 0, 0);
		addLuaSprite('dark4', true);
		doTweenColor('hello', 'ElecticalTamper4', 'FFFFFFFF', 0.2, 'quartIn');
		setObjectCamera('dark4', 'other');
		runTimer('wait4', 4);
		end

		if count == 3 then
		makeLuaSprite('dark3', 'ElecticalTamper3', 0, 0);
		addLuaSprite('dark3', true);
		doTweenColor('hello3', 'ElecticalTamper3', 'FFFFFFFF', 0.2, 'quartIn');
		setObjectCamera('dark3', 'other');
		runTimer('wait3', 8);
		count = count + 1
		end


		if count == 2 then
		makeLuaSprite('dark2', 'ElecticalTamper2', 0, 0);
		addLuaSprite('dark2', true);
		doTweenColor('hello', 'ElecticalTamper2', 'FFFFFFFF', 0.2, 'quartIn');
		setObjectCamera('dark2', 'other');
		runTimer('wait2', 12);
		count = count + 1
		end

		if count == 1 then
		makeLuaSprite('dark', 'ElecticalTamper1', 0, 0);
		addLuaSprite('dark', true);
		doTweenColor('hello', 'ElecticalTamper1', 'FFFFFFFF', 0.2, 'quartIn');
		setObjectCamera('dark', 'other');
		runTimer('wait', 16);
		count = count + 1
		end
		
		--Works!
	end
end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'dark', 0, 9, 'linear');
	end

	if tag == 'wait2' then
		doTweenAlpha('byebye2', 'dark2', 0, 7, 'linear');
		count = count - 1
	end

	if tag == 'wait3' then
		doTweenAlpha('byebye3', 'dark3', 0, 5, 'linear');
		count = count - 1
	end

	if tag == 'wait4' then
		doTweenAlpha('byebye4', 'dark4', 0, 3, 'linear');
		count = count - 1
	end

end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('dark', true);
	end

	if tag == 'byeby2' then
		removeLuaSprite('dark2', true);
	end

	if tag == 'byebye3' then
		removeLuaSprite('dark3', true);
	end

	if tag == 'byebye4' then
		removeLuaSprite('dark4', true);
	end

end
-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false


-- Called after the note hit calculations

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == "Sus Note" then
	end
end