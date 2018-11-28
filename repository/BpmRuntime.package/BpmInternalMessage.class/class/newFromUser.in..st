other
newFromUser: aBpmUser in: aBpmEnvironment

	^super new initialize
		bpmEnvironment: aBpmEnvironment;
		category: BpmInternalUserMessage new;
		from: aBpmUser;
		yourself