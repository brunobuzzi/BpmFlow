other
getCalendarNamedOrDefault: aString in: aBpmEnvironment

	^self cache 
		detect: [:each | (each name = aString) and: [each bpmEnvironment == aBpmEnvironment]] 
		ifNone: [self defaultIn: aBpmEnvironment]