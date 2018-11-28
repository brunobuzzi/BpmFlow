other
newNamed: aString boxParent: aBpmUserBoxOrNil for: aBpmUser

	^super new initialize
		boxName: aString;
		boxParent: aBpmUserBoxOrNil;
		user: aBpmUser;
		yourself