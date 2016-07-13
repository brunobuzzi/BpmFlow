script variables
getValueOfFormField: varName
	"Answer the value of the variable named <varName>"

	^self getValueOf: varName ifNone: [nil]