cache
addToCache

	(self class cache anySatisfy: [:each | each name = name]) ifTrue: [^EnvironmentAlreadyExistException signal: 'BPM Environment named [', name, '] already exist !'].

	BpmExceptionCalendar addDefaultCalendarIn: self. "create a 'Default' calendar for new <BpmEnvironment>"

	^self class cache add: self