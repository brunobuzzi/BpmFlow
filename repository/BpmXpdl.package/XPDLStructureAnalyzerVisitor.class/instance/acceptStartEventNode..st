xpdl events
acceptStartEventNode: aXPDLStartNode
	"The receiver check if the start node exist and if the start node is timer check the <activationBlock> validity"

	hasStartNode := true.

	aXPDLStartNode isTimerNode ifTrue: [| blockAnalysis | 
		blockAnalysis := BpmTimerCodeAnalyzer new blockCode: (aXPDLStartNode extendedValueOf: 'activationBlock' ifAbsent: ['']).
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | self addEventCodeWarningItem: eachString]
	].

	self acceptXpdlNode: aXPDLStartNode.

	aXPDLStartNode outTransitions do: [:each | each acceptVisitor: self].