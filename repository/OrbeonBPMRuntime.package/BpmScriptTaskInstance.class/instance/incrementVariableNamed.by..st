script variables
incrementVariableNamed: varName by: increment
	"The receiver increment the variable named <varName> by <increment>.
	If the variable name does not exist --> is created "
	| currentValue |

	currentValue := self getValueOf: varName ifNone: [^self setVariableNamed: varName withValue: increment].

	^self setVariableNamed: varName withValue: (currentValue + increment)