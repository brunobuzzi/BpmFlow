tasks
getTaskNamed: aString ifNone: aBlock

	^self getAllArtifacts detect: [:each | each getDefinitionName = aString] ifNone: aBlock