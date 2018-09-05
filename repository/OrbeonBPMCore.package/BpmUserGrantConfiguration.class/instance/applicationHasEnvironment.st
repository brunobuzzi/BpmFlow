other
applicationHasEnvironment

	application ifNil: [^false].

	^application hasBpmEnvironment