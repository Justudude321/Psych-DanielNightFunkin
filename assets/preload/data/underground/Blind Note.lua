function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Blind Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BLINDNOTE_assets');

			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Blind Note' then
		characterPlayAnim('boyfriend', 'hurt', true);
		--Make a quick flash of orange and white and let the notes spin if possible, if not then just change the scroll type
		playSound('bang');
		makeLuaSprite('boom', 'FlashV2', -870, -360);
		addLuaSprite('boom', true);
		doTweenColor('hello', 'FlashV2', 'FFFFFFFF', 0.2, 'quartIn');
		setObjectCamera('boom', 'other');
		runTimer('wait', 0.4);

		--Make notes spin or sumthing later

	end
end
end
-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'boom', 0, 0.1, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('boom', true);
	end
end

-- Called after the note hit calculations

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == "Blind Note" then
	end
end