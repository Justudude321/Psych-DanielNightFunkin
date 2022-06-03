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
		--Get the black screen to appear to so that it can stack up until it's too dark to see notes, maybe make it
		--disappear after a 15 seconds
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
	if noteType == "Sus Note" then
	end
end