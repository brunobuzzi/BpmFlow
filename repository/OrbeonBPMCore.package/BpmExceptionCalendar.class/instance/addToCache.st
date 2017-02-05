other
addToCache
	
	(name isNil or: [name isEmpty]) ifTrue: [NoBpmNameException signal: 'The Calendar has NO name !'].

	^self class addCalendar: self named: name