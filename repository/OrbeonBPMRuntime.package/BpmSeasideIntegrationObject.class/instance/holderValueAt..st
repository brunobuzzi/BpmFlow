other
holderValueAt: fieldName
	"Answer the <AppFieldValueHolder> for the field named <fieldName>"

	^fieldsValues at: fieldName ifAbsent: [nil]