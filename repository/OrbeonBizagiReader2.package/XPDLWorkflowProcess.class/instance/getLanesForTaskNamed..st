lanes
getLanesForTaskNamed: aString

	^self isEmbedded
	ifFalse: [parentPool getLanesForTaskNamed: aString]
	ifTrue: [parentWorkflow getLanesForTaskNamed: aString].