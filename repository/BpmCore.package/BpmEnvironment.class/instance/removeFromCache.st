cache
removeFromCache

	^self class cache remove: self ifAbsent: [NoEnvironmentException signal: 'No such Environment in cache']