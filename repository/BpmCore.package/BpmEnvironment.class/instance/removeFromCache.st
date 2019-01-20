cache
removeFromCache

	(self class adminsEnvironmentName = name) ifTrue: [ImproperBpmOperationException signal: '[admins] Environment can not be removed'].

	^self class cache remove: self ifAbsent: [NoEnvironmentException signal: 'No such Environment in cache']