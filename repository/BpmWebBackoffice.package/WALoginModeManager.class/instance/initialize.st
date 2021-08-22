other
initialize

	super initialize.

	modeType := (self session systemRoot loginModeFor: 'orbeon-processes-web') modeName