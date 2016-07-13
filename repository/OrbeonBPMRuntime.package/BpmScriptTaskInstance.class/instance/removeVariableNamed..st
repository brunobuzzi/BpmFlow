script variables
removeVariableNamed: varName
	"The receiver remove the script variable named <varName>"

	^scriptVariables removeKey: varName ifAbsent: []