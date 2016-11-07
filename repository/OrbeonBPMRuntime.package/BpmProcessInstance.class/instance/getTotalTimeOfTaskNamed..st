other
getTotalTimeOfTaskNamed: aString

	^(self getTaskNamed: aString ifNone: [^Time fromSeconds: 0]) getTotalTime