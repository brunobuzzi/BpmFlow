tables
sewafTableForRoles
	| table |

	table := (self hasTableNamed: 'Roles') 
		ifTrue: [self getTableNamed: 'Roles' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForRoles].

	table selectedObject:  selectedObject.

	^table