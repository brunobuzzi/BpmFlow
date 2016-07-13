other
addToCache

	application ifNil: [^self throwExceptionNoOrbeonApplication].

	^self class cache at: application applicationName put: self