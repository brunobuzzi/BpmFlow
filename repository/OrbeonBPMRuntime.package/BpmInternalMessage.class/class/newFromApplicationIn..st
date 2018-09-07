other
newFromApplicationIn: aBpmEnvironment

	^super new initialize
		bpmEnvironment: aBpmEnvironment;
		category: BpmInternalApplicationMessage new;
		yourself