script variables
setVariableNamed: varName withValue: anObject
	"The receiver create set a variable named <varName> with the value <anObject>"

	^scriptVariables at: varName put: anObject