applications
getEnvironmentForApplicationNamed: aString

	^environments detect: [:each | each includesApplicationNamed: aString] ifNone: [NoApplicationException signal: 'No Application named [', aString, '] was found']