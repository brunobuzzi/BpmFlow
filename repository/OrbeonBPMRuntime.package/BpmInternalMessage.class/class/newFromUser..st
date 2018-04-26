other
newFromUser: aBpmUser

	^super new initialize
		category: BpmInternalUserMessage new;
		from: aBpmUser;
		yourself