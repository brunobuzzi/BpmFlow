other
sewafTableForUsers
	| table |

	table := (self hasTableNamed: 'Users') 
		ifTrue: [self getTableNamed: 'Users' ifAbsent: []] 
		ifFalse: [self initializeTables].

	^table