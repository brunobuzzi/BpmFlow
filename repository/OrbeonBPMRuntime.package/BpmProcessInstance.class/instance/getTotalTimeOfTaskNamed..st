other
getTotalTimeOfTaskNamed: aString

	^(self getTaskNamed: aString ifNone: [self getSubProcessNamed: aString ifNone: [^Time fromSeconds: 0]]) getTotalTime