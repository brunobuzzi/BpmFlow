other
sewafTableForGrantConfiguration
	"Table with all Users that are NOT present in the role <selectedObject> "
	| table |

	table := (self hasTableNamed: 'GrantConfigurartion') 
		ifTrue: [self getTableNamed: 'GrantConfigurartion' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForGrantConfiguration].

	^table