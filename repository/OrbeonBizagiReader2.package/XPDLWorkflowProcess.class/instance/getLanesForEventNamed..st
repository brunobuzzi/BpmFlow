lanes
getLanesForEventNamed: aString

	^self isEmbedded
	ifFalse: [parentPool getLanesForEventNamed: aString]
	ifTrue: [parentWorkflow getLanesForEventNamed: aString].