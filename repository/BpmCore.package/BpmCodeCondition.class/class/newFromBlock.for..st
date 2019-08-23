other
newFromBlock: aStringOrBlock for: aBpmObject

	^super new initialize
		evaluationCode: aStringOrBlock;
		bpmObject: aBpmObject;
		yourself