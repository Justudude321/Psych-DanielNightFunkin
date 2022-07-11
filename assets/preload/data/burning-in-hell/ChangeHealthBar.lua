function onCreatePost()
	makeLuaSprite('Health', 'sanshealthbar')
	setObjectCamera('Health', 'hud')
	addLuaSprite('Health', true)
	setObjectOrder('Health', getObjectOrder('healthBar') + 1)
	setProperty('healthBar.visible', true)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBarBG.visible', false);
	setProperty('healthBar.scale.y', 1.75);
	setProperty('healthBar.flipX', true);
end

function onUpdatePost(elapsed)
	setProperty('Health.x', getProperty('healthBar.x') - 70)
	setProperty('Health.y', getProperty('healthBar.y') - 7)
end