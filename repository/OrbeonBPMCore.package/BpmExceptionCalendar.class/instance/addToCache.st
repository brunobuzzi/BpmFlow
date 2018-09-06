other
addToCache
	
	(name isNil or: [name isEmpty]) ifTrue: [NoBpmNameException signal: 'The Calendar has NO name !'].

	bpmEnvironment ifNil: [NoEnvironmentException signal: 'Calendar has not Environment' ].
 
	^self class addCalendar: self