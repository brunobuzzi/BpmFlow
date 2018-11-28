Accessing
getPreviousFields
	"The receiver answer a collection of fields to show that belong to previous tasks"

	^((self extendedValueOf: 'previousFields' ifAbsent: [^OrderedCollection new]) subStrings: ' ') collect: [:each | each trimBlanks]