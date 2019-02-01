other
sewafTableForInternationalizations
	| table |

	table := (self hasTableNamed: 'internationalizations') 
		ifTrue: [self getTableNamed: 'internationalizations' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForInternationalizations].

	^table