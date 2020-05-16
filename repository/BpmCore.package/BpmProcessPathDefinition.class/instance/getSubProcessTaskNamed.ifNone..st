get artifacts
getSubProcessTaskNamed: aString ifNone: aBlock

	^subProcessTasks at: aString ifAbsent: aBlock