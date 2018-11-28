integration methods
hasFieldNamed: fieldName
	"Answer whether or not the receiver has a field named <aSymbol>"

	^externalObject class canUnderstand: fieldName asSymbol