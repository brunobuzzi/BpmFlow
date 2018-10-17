other
newFromBlock: aBlock for: aBpmTransitionDefinition

	^super new initialize
		evaluationCode: aBlock;
		transition: aBpmTransitionDefinition;
		yourself