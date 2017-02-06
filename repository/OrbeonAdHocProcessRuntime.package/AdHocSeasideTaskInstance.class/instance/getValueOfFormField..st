other
getValueOfFormField: fieldName
	"Answer the value of the field named <fieldName>"

	externalObject ifNil: [^nil].

	^externalObject fieldValueAt: fieldName