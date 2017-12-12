execution
getExecutedScriptNamed: aString ifNone: aBlock

	^executedScripts detect: [:each | each getDefinitionName = aString] ifNone: [^aBlock value]