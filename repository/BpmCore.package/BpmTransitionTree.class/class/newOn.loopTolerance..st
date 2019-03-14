other
newOn: aBpmProcessDefinition loopTolerance: aSmallInteger

	^super new initialize
		loopTolerance: aSmallInteger;
		setRootWith: aBpmProcessDefinition;
		yourself