instance creation
newNamed: aString

	^super new initialize
		processName: aString;
		yourself