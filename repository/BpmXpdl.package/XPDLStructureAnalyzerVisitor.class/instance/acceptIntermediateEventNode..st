xpdl events
acceptIntermediateEventNode: aXPDLIntermediateNode

	(visitedEvents identityIncludes: aXPDLIntermediateNode) 
	ifTrue: [^self]
	ifFalse: [visitedEvents add: aXPDLIntermediateNode].

	(aXPDLIntermediateNode getName isNil or: [aXPDLIntermediateNode getName isEmpty]) ifTrue: [self addEventWithNoNameItem: aXPDLIntermediateNode].

	aXPDLIntermediateNode isTimerNode ifTrue: [| blockAnalysis | 
		blockAnalysis := BpmIntermediateEventTimerCodeAnalyzer new blockCode: (aXPDLIntermediateNode extendedValueOf: 'activationBlock' ifAbsent: ['']).
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | self addEventCodeWarningItem: aXPDLIntermediateNode description: eachString]
	].

	self acceptXpdlNode: aXPDLIntermediateNode.

	aXPDLIntermediateNode outTransitions do: [:each | each acceptVisitor: self]