other
hasTaskNamed: aString

	^self getTaskNodes anySatisfy: [:each | each getName = aString]