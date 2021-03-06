xpdl events
acceptStartEventNode: aXPDLStartNode
	"The receiver check if the start node exist and if the start node is timer check the <activationBlock> validity"

	(visitedEvents identityIncludes: aXPDLStartNode) 
	ifTrue: [^self]
	ifFalse: [visitedEvents add: aXPDLStartNode].

	hasStartNode := true.

	aXPDLStartNode isTimerNode ifTrue: [| blockAnalysis | 
		blockAnalysis := bpmEnvironment getCodeAnalyzerForStartEvents.
		blockAnalysis blockCode: (aXPDLStartNode extendedValueOf: 'activationBlock' ifAbsent: ['']).
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | self addEventCodeWarningItem: aXPDLStartNode description: eachString]
	].

	self acceptXpdlNode: aXPDLStartNode.

	aXPDLStartNode outTransitionsDo: [:each | each acceptVisitor: self].