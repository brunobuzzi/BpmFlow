other
hasScriptNamed: aString

	^self scripts anySatisfy: [:each | each name = aString]