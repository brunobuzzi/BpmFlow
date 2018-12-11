xpdl top elements
acceptXpdlNode: aXPDLObject

	aXPDLObject hasNoInOrOutTransitions ifTrue: [self addIsolatedActivityItemFor: aXPDLObject].

	(aXPDLObject hasMixedStartConditions) ifTrue: [self addActivityWithMixedConditionsItem: aXPDLObject].