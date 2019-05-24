other
newOn: aBpmEnvironment for: aBpmUser app: anApplication role: aBpmRole

	^super new initialize
		environment: aBpmEnvironment;
		user: aBpmUser;
		role: aBpmRole;
		application: anApplication;
		yourself