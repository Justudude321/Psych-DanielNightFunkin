function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Glitch Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'GLITCHNOTE_assets');

			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Glitch Note' then
		characterPlayAnim('boyfriend', 'hurt', true);
		noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 - math.random(50, screenWidth / 7), 0.001)
		noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 - math.random(50, screenWidth / 7), 0.001)
		noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 - math.random(50, screenWidth / 7), 0.001)
		noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 - math.random(50, screenWidth / 7), 0.001)

		noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - math.random(-50, -screenHeight / 5), 0.001)
		noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - math.random(-50, -screenHeight / 5), 0.001)
		noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - math.random(-50, -screenHeight / 5), 0.001)
		noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - math.random(-50, -screenHeight / 5), 0.001)
	end
end
end
-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false


-- Called after the note hit calculations

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == "Glitch Note" then
	end
end
-- This alter code from earlier is what made it work, not whatever was typed in the source,