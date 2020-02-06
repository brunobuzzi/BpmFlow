cache
addToCache

	(self class cache anySatisfy: [:each | each name asLowercase = name asLowercase]) ifTrue: [^EnvironmentAlreadyExistException signal: 'BPM Environment named [', name, '] already exist !'].

	self addDefaultCalendar. "create a 'Default' calendar for new <BpmEnvironment>"

	^self class cache add: self