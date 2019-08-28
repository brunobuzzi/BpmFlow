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
		blockAnalysis := BpmTransitionConditionCodeAnalyzer for: aXPDLTransitionNode startCondition.
		blockAnalysis analyze.
		blockAnalysis codeWarnings do: [:eachString | self addTransitionCodeWarningItem: eachString]. 
	].
	aXPDLTransitionNode endNode acceptVisitor: self.