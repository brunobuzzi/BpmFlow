export
exportProcessesFields: fieldsNames to: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator
	"The receiver add all field values to FileStream <writeStream> separating each field with <fieldSeparator>.
	Repeatable field are stored in the same -cell- and each value is separated by <valueSeparator>"

	fieldsNames do: [:fieldName | writeStream nextPutAll: fieldName; nextPutAll: fieldSeparator].
	writeStream nextPutAll: String lf.

	processInstances do: [:eachProcess |
		eachProcess exportFields: fieldsNames to: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator.
		writeStream nextPutAll: String lf.
	].

	^writeStream