other
fromBlock: aBlock

	^super new initialize
		evaluationCode: aBlock;
		yourself