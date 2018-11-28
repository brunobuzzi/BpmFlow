export
exportFields: fieldsNames to: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator
	"The receiver add all field values to FileStream <writeStream> separating each field with <fieldSeparator>.
	Repeatable field are stored in the same -cell- and each value is separated by <valueSeparator>"

	fieldsNames do: [:fieldName | | valuesCollection |
		valuesCollection := self getValuesOfProcessField: fieldName.
		(valuesCollection size = 1)
		ifTrue: [writeStream nextPutAll: (self getPrintableValueFrom: valuesCollection last)] 
		ifFalse: [valuesCollection do: [:value | writeStream nextPutAll: (self getPrintableValueFrom: value), valueSeparator]].
		writeStream nextPutAll: fieldSeparator.
	].