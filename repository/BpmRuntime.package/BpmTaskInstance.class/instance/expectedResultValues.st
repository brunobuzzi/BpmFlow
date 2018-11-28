other
expectedResultValues
	"Answer aDictionary where the keys are the names of the fields of the Previous(parent) Transition, and the values are the values of each field in the previous transition"
	| resultValues |

	resultValues := Dictionary new.
	definition getExpectedResult do: [:each | 
		resultValues at: each put: (process getValueOfProcessField: each)].

	^resultValues