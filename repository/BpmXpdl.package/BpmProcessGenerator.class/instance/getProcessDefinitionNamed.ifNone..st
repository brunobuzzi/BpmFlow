process definition creation
getProcessDefinitionNamed: aString ifNone: aBlock

	^processes at: aString ifAbsent: aBlock