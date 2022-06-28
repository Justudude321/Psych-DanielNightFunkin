
function onCreate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'daniel-test');

    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx2'); --First death
	
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver2'); --Death loop
	
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd2'); --Retry Confirm

end