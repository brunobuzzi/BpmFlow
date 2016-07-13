tables
sewafTableForUsers
	"Table with all Users that are NOT present in the role <selectedObject> "
	| table |

	table := (self hasTableNamed: 'Users') 
		ifTrue: [self getTableNamed: 'Users' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForUsers].

	table selectedObject:  selectedObject.

	^table