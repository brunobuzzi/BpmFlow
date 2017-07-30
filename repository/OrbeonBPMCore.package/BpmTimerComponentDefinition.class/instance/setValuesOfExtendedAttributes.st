other
setValuesOfExtendedAttributes
	"The receiver create the <ExecBlock> instance to be used in the activation evaluation"

	activationBlock := self evaluate: (eventDefinition extendedValueOf: 'activationBlock').