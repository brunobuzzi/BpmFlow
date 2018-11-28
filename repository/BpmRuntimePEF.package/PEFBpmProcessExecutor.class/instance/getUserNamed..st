users
getUserNamed: aString

	^self getUserNamed: aString ifNone: [PEFImproperStateException signal: 'No User Found']