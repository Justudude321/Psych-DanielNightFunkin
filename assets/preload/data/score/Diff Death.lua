
function onCreate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'picoo'); --Character json file for the death animation
	
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx2'); --First death
	
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver2'); --Death loop
	
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd2'); --Retry Confirm

end