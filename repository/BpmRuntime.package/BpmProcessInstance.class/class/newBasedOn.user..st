other
newBasedOn: aBpmProcessDefinition user: aBpmUser

	^super new initialize
		definition: aBpmProcessDefinition;
		generateUniqueId;
		creator: aBpmUser;
		processName: aBpmProcessDefinition processName;
		yourself