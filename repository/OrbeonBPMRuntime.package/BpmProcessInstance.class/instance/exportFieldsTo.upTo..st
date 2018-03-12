export
exportFieldsTo: writeStream upTo: repeatableCount
	"The receiver add all field values to FileStream <writeStream> and store upto <repeatableCount> rooms for repeatable fields"

"
		(self getExecutedArtifactsReversed select: [:each | each hasForm]) do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | ^value]].

		self getExecutedScriptsReversed do: [:each | (each getValueOfFormField: fieldName) ifNotNil: [:value | ^value]].

		(self includesKey: fieldName) ifTrue: [^self valueAtExternalVariable: fieldName].
"