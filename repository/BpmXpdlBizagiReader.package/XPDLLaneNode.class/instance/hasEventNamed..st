other
hasEventNamed: aString

	^self getEventsNodes anySatisfy: [:each | each getName = aString]