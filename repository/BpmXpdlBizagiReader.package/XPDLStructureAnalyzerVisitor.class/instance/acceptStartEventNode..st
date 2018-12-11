events
acceptStartEventNode: aXPDLStartNode

	hasStartNode := true.

	aXPDLStartNode isTimerNode ifTrue: [| blockAnalysis | 
		blockAnalysis := BpmTimerCodeAnalyzer new blockCode: (aXPDLStartNode extendedValueOf: 'activationBlock' ifAbsent: ['']).
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | self addEventCodeWarningItem: eachString]
	].

	self acceptXpdlNode: aXPDLStartNode.

	aXPDLStartNode outTransitions do: [:each | each acceptVisitor: self].