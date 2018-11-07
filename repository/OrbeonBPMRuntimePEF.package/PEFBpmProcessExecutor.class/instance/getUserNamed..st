users
getUserNamed: aString

	^users at: aString ifAbsent: [PEFImproperStateException signal: 'No User Found']