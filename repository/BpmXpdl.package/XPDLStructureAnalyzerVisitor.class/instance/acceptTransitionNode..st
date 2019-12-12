xpdl transitions
acceptTransitionNode: aXPDLTransitionNode
	"The receiver check for:
	* Cyclic loops
	* Validity of condition <Block> code"

	(visitedTransitions identityIncludes: aXPDLTransitionNode) ifTrue: [^self]. "to avoid cyclic loops"

	visitedTransitions add: aXPDLTransitionNode.

	self acceptXpdlNode: aXPDLTransitionNode.

	aXPDLTransitionNode startCondition notNil 
	ifTrue: [| blockAnalysis | 
		blockAnalysis := bpmEnvironment getCodeAnalyzerForTransitionConditions.
		blockAnalysis blockCode: aXPDLTransitionNode startCondition.
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | self addTransitionCodeWarningItem: aXPDLTransitionNode description: eachString]. 
	].

	aXPDLTransitionNode endNode ifNil: [^self addTransitionWithNoEndNodeItem: aXPDLTransitionNode]. 

	aXPDLTransitionNode endNode acceptVisitor: self.