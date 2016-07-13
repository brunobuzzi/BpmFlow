other
newApplication

	appName isEmpty ifTrue: [^self].

	(appType = 'BPM') ifTrue: [^(BpmApplication newNamed: appName) addToCache].

	^(OrbeonApplication newNamed: appName) addToCache