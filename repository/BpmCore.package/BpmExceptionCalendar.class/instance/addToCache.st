other
addToCache
	
	(name isNil or: [name isEmpty]) ifTrue: [NoArtifactNameException signal: 'The Calendar has NO name !'].

	bpmEnvironment ifNil: [NoEnvironmentException signal: 'Calendar has not Environment' ].
 
	^self class addCalendar: self