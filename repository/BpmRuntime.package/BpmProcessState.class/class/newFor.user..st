other
newFor: aBpmProcessInstance user: aBpmUser

	^super new initialize
		process: aBpmProcessInstance;
		user: aBpmUser;
		yourself