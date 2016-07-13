other
getLanesForSubProcessTaskNamed: aString

	^self isEmbedded
	ifFalse: [parentPool getLanesForSubProcessTaskNamed: aString]
	ifTrue: [parentWorkflow getLanesForSubProcessTaskNamed: aString].