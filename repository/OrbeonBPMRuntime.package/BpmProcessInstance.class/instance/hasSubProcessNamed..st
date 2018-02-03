subprocesses
hasSubProcessNamed: aString
	""

	^(self getSubProcessNamed: aString ifNone: [nil]) notNil