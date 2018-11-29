lanes
getLanesForScriptNamed: aString

	^self isEmbedded
	ifFalse: [parentPool getLanesForScriptNamed: aString]
	ifTrue: [parentWorkflow getLanesForScriptNamed: aString].