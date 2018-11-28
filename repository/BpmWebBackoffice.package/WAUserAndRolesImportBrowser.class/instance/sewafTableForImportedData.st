other
sewafTableForImportedData
	"Table with all Users that are NOT present in the role <selectedObject> "
	| table |

	table := (self hasTableNamed: 'ImportedData') 
		ifTrue: [self getTableNamed: 'ImportedData' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForImportedData].

	^table