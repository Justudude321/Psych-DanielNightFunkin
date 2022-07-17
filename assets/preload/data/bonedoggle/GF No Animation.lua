function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'GF No Animation' then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
			setPropertyFromGroup('unspawnNotes', i, 'gfNote', true)
			getPropertyFromGroup('unspawnNotes', i, 'mustPress') --Doesn't let Dad/Opponent notes get ignored
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
end