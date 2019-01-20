cache
removeFromCache

	(self class adminEnvironmentName = name) ifTrue: [ImproperBpmOperationException signal: '[admins] Environment can NOT be removed !!!'].

	^self class cache remove: self ifAbsent: [NoEnvironmentException signal: 'No such Environment in cache']