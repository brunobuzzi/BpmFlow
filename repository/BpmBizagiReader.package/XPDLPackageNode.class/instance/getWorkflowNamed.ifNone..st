other
getWorkflowNamed: aString ifNone: aBlock

	^(self getPoolNamed: aString ifNone: [^nil]) workflow