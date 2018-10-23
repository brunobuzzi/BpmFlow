target identification
getFieldNamesToSet
	"The receiver answer a collection of fields names used to set in the target bpm process"

	^(self extendedValueOf: 'fieldNamesToSet') subStrings: ' '