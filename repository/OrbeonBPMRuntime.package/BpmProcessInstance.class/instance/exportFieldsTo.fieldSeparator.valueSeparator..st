export
exportFieldsTo: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator
	"The receiver add all field values to FileStream <writeStream> separating each field with <fieldSeparator>.
	Repeatable field are stored in the same -cell- and each value is separated by <valueSeparator>"

	self getAllFieldNames do: [:fieldName | | valuesCollection |
		valuesCollection := self getValuesOfProcessField: fieldName.
		(valuesCollection size = 1)
		ifTrue: [writeStream nextPutAll: valuesCollection last printString] 
		ifFalse: [valuesCollection do: [:value | writeStream nextPutAll: value printString]].
		writeStream nextPutAll: fieldSeparator.
	].