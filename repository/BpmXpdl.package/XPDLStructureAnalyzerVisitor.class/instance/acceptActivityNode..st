xpdl tasks
acceptActivityNode: aXPDLActivityNode
	"The receiver check for:
	* Activities with no name or empty name"

	self acceptXpdlNode: aXPDLActivityNode.

	(aXPDLActivityNode getName isNil or: [aXPDLActivityNode getName isEmpty])	ifTrue: [self addActivityWithNoNameItem: aXPDLActivityNode].

	aXPDLActivityNode outTransitions do: [:each | each acceptVisitor: self].

	aXPDLActivityNode attachedEvents do: [:each | each acceptVisitor: self].