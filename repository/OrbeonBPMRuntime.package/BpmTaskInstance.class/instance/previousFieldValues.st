other
previousFieldValues
	"Answer aDictionary where the keys are the names of the fields of the Previous(parent) Transition, and the values are the values of each field in the previous transition"
	| previousFieldValues |

	previousFieldValues := Dictionary new.
	definition getPreviousFields do: [:each | 
		previousFieldValues at: each put: (process getBasicValueOfProcessField: each)].

	^previousFieldValues