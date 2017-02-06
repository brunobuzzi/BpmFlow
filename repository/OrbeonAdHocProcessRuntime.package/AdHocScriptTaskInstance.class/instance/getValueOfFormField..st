other
getValueOfFormField: fieldName
	"Answer the value of the field named <fieldName>"

	^scriptVariables at: fieldName ifAbsent: [nil]