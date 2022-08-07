local defaultNotePos = {};
local spin = false;
local arrowMoveX = 0;
local arrowMoveY = 0;

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
		for i = 0,7 do 
			x = getPropertyFromGroup('strumLineNotes', i, 'x')
	
			y = getPropertyFromGroup('strumLineNotes', i, 'y')
	
			table.insert(defaultNotePos, {x,y})
		end
		
		for i = 4,7 do 
			setPropertyFromGroup('strumLineNotes', i, 'x', 
			defaultNotePos[i + 1][1] + math.floor(math.random(-150,150)))
	
			if downscroll == true then 
				ylowest = 50;
				yhighest = -150;
			else 
				ylowest = -150
				yhighest = 150;
			end
	
			setPropertyFromGroup('strumLineNotes', i, 'y', 
			defaultNotePos[i + 1][2] + math.floor(math.random(ylowest,yhighest)))
		end

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