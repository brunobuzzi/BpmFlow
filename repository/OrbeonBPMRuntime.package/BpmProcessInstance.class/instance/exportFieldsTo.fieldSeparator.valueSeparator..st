export
exportFieldsTo: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator
	"The receiver add all field values to FileStream <writeStream> separating each field with <fieldSeparator>.
	Repeatable field are stored in the same -cell- and each value is separated by <valueSeparator>"

	^self exportFields: self getAllFieldNames to: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator