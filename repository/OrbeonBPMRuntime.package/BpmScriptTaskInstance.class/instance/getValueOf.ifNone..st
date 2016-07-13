script variables
getValueOf: varName ifNone: aBlock
	"The receiver answer the value of the script variable named <varName> if the variable does not exist then evaluate the zero argument block <aBlock> "

	^scriptVariables at: varName ifAbsent: aBlock