endstops = 0
function onEvent(n,v1,v2)
if n == 'Change Character' and v2 == 'bf_swag' then

	setProperty('stagefront.visible',false)
	setProperty('stageback.visible',false)

end
if n == 'Change Character' and v2 == 'bf'then

	setProperty('stagefront.visible',true)
	setProperty('stageback.visible',true)

end


end
