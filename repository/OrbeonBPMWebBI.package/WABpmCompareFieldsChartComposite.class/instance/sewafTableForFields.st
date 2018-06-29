other
sewafTableForFields
	| table |

	table := (self hasTableNamed: 'Fields') 
		ifTrue: [self getTableNamed: 'Fields' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForFields].

	^table