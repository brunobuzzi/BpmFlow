script variables
hasFieldNamed: aString
	"Answer whether or not the receiver has a field named <aString>"

	^scriptVariables includesKey: aString asString