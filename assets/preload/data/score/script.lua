
function onEvent(n,v1,v2)

	if n == 'Play Animation' and v1 == 'letsgo' and v2 == 'darnell' then
		
	setProperty("defaultCamZoom",0.9)

	end

end

function onUpdate()

	if curBeat == 32 then
	setProperty("defaultCamZoom",0.6)
	end

	if curBeat == 128 then
	setProperty("defaultCamZoom",0.6)
	end

	if curBeat == 320 then
	setProperty("defaultCamZoom",0.6)
	end
end
