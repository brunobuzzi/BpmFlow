tasks
acceptActivityNode: aXPDLActivityNode

	(aXPDLActivityNode getName isNil or: [aXPDLActivityNode getName isEmpty])	ifTrue: [self addActivityWithNoNameItem: aXPDLActivityNode].
	(aXPDLActivityNode hasMixedStartConditions) ifTrue: [self addActivityWithMixedConditionsItem: aXPDLActivityNode].

	(xpdlNames includes: aXPDLActivityNode getName)
	ifTrue: [self addRepeatedNameItemFor: aXPDLActivityNode]
	ifFalse: [xpdlNames add: aXPDLActivityNode getName].

	aXPDLActivityNode outTransitions do: [:each | each acceptVisitor: self].