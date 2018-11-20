other
setValuesOfExtendedAttributes
	"The receiver create the <ExecBlock> instance to be used in the activation evaluation"
	| stObject |

	stObject := [self evaluate: (eventDefinition extendedValueOf: 'activationBlock')] on: Error do: [:ex | BpmTimerDefinitionException signal: 'The [activationBlock] attribute must be a valid Smalltalk Block'].

	stObject isBlock ifFalse: [BpmTimerDefinitionException signal: 'The [activationBlock] attribute must be a valid Smalltalk Block'].

	activationBlock := stObject.