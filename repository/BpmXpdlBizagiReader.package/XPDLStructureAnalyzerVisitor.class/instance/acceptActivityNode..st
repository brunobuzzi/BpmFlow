tasks
acceptActivityNode: aXPDLActivityNode

	self acceptXpdlNode: aXPDLActivityNode.

	(aXPDLActivityNode getName isNil or: [aXPDLActivityNode getName isEmpty])	ifTrue: [self addActivityWithNoNameItem: aXPDLActivityNode].

	(xpdlNames includes: aXPDLActivityNode getName)
	ifTrue: [self addRepeatedNameItemFor: aXPDLActivityNode]
	ifFalse: [xpdlNames add: aXPDLActivityNode getName].

	aXPDLActivityNode outTransitions do: [:each | each acceptVisitor: self].