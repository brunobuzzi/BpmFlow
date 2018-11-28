script variables
hasVariableNamed: aString
	"The receiver answer whether or not exist a script variable named <aString> "

	^scriptVariables includesKey: aString