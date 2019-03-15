*bpmwebbasic
getSeasideKurlParameter
	"Answer the [k] parameter of the Seaside Session"

	^self session requestContext request at: '_k' ifAbsent: [ImproperBpmOperationException signal: 'Seaside Application must have a [k] URL parameter'].