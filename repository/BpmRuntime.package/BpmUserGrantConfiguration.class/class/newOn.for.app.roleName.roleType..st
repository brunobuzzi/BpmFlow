other
newOn: aBpmEnvironment for: aBpmUser app: anApplication roleName: roleName roleType: roleType

	^super new initialize
		environment: aBpmEnvironment;
		user: aBpmUser;
		roleName: roleName;
		roleType: roleType;
		application: anApplication;
		yourself