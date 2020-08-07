other
hasScriptNamed: aString

	^scripts anySatisfy: [:each | each name = aString]