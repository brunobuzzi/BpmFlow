other
addToCache

	(self class cache anySatisfy: [:each | each name = name]) ifTrue: [^BpmEnvironmentAlreadyExistException signal: 'BPM Environment named [', name, '] already exist !'].

	^self class cache add: self