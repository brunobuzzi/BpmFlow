export
exportProcessesFieldsTo: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator
	"The receiver add all field values to FileStream <writeStream> separating each field with <fieldSeparator>.
	Repeatable field are stored in the same -cell- and each value is separated by <valueSeparator>"
	| labelsStored |

	labelsStored := false.

	processInstances do: [:each |
		labelsStored 
		ifFalse: [labelsStored := true.
					each	getAllFieldNames do: [:fieldName | writeStream nextPutAll: fieldName; nextPutAll: fieldSeparator].
		].
		each exportFieldsTo: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator.
	].

	^writeStream