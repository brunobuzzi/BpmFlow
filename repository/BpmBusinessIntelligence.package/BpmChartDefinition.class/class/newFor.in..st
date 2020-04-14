other
newFor: aBpmUser in: aBpmEnvironment

	^super new initialize
		user: aBpmUser;
		bpmEnvironment: aBpmEnvironment;
		yourself