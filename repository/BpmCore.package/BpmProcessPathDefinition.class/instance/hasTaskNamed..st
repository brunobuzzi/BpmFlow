other
hasTaskNamed: aString

	^tasks anySatisfy: [:each | each name = aString]