other
newFromBlock: aStringOrBlock for: aBpmTransitionDefinition

	^super new initialize
		evaluationCode: aStringOrBlock;
		transition: aBpmTransitionDefinition;
		yourself