export
exportFieldsTo: writeStream fieldSeparator: fieldSeparator valueSeparator: valueSeparator
	"The receiver add all field values to FileStream <writeStream> separating each field with <fieldSeparator>.
	Repeatable field are stored in the same -cell- and each value is separated by <valueSeparator>"

"
		(self getExecutedArtifactsReversed select: [:each | each hasForm]) do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | ^value]].

		self getExecutedScriptsReversed do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | ^value]].

		(self includesKey: fieldName) ifTrue: [^self valueAtExternalVariable: fieldName].
"

	self getAllFieldNames do: [:each | ].