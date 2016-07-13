script variables
decrementVariableNamed: varName by: decrement
	"The receiver increment the variable named <varName> by <decrement>.
	If the variable name does not exist --> is created "
	| currentValue |

	currentValue := self getValueOf: varName ifNone: [^self setVariableNamed: varName withValue: decrement negated].

	^self setVariableNamed: varName withValue: (currentValue - decrement)