other
hasTaskNamed: aString

	^self tasks anySatisfy: [:each | each name = aString]