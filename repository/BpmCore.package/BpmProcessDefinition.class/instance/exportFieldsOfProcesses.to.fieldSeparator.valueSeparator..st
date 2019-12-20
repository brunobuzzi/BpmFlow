export
exportFieldsOfProcesses: aCollection to: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator
	"The receiver add all field values of <BpmProcessInstance> in collection <aCollection> to FileStream <writeStream> separating each field with <fieldSeparator>.
	Repeatable field are stored in the same -cell- and each value is separated by <valueSeparator>"
	| labelsStored allFields |

	labelsStored := false.

	aCollection do: [:each |
		labelsStored 
		ifFalse: [labelsStored := true.
					allFields := each	getAllFieldNames.
					allFields do: [:fieldName | writeStream nextPutAll: fieldName; nextPutAll: fieldSeparator].
					writeStream nextPutAll: String lf.
		].
		each exportFields: allFields to: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator.
		writeStream nextPutAll: String lf.
	].

	^writeStream