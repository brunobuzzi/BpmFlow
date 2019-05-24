other
newOn: aBpmEnvironment for: aBpmUser app: anApplication roleName: roleName roleType: roleType roleIsAdmin: aBoolean

	^super new initialize
		environment: aBpmEnvironment;
		user: aBpmUser;
		roleName: roleName;
		roleType: roleType;
		roleIsAdmin: aBoolean;
		application: anApplication;
		yourself