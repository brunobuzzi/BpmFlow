transitions
acceptTransitionNode: aXPDLTransitionNode

	self acceptXpdlNode: aXPDLTransitionNode.

	aXPDLTransitionNode startCondition notNil 
	ifTrue: [| blockAnalysis | 
		blockAnalysis := BpmProcessConditionCodeAnalyzer for: aXPDLTransitionNode startCondition.
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | self addTransitionCodeWarningItem: eachString]. 
	].

	aXPDLTransitionNode endNode acceptVisitor: self.