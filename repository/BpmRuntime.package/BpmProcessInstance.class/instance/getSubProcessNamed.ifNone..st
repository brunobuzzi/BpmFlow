subprocesses
getSubProcessNamed: aString ifNone: aBlock

	^subprocesses detect: [:each | each getDefinitionName = aString] ifNone: aBlock