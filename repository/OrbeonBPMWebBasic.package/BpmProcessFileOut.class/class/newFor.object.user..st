other
newFor: waComponent object: aBpmProcessDefOrInst user: aBpmUser

	^super new initialize
			webComponent: waComponent;
			user: aBpmUser;
			fileOutObject: aBpmProcessDefOrInst;
			yourself