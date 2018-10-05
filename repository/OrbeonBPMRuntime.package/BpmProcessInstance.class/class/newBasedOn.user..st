other
newBasedOn: aBpmProcessDefinition user: aBpmUser

	^super new initialize
		definition: aBpmProcessDefinition;
		creator: aBpmUser;
		processName: aBpmProcessDefinition processName;
		yourself