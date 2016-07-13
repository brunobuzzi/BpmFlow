integration methods
getBasicValueOfFormField: fieldName
	"Answer the value of the field named <fieldName>"

	externalObject ifNil: [^nil].

	^externalObject valueAt: fieldName