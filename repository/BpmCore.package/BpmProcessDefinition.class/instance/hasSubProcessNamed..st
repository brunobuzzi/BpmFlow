subprocesses
hasSubProcessNamed: aString

	^(self getSubProcessNamed: aString ifAbsent: [nil]) notNil