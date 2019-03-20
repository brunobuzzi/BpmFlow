xpdl events
acceptIntermediateEventNode: aXPDLIntermediateNode

	(visitedEvents identityIncludes: aXPDLIntermediateNode) 
	ifTrue: [^self]
	ifFalse: [visitedEvents add: aXPDLIntermediateNode].

	(aXPDLIntermediateNode getName isNil or: [aXPDLIntermediateNode getName isEmpty]) ifTrue: [self addEventWithNoNameItem: aXPDLIntermediateNode].

	self acceptXpdlNode: aXPDLIntermediateNode.

	aXPDLIntermediateNode outTransitions do: [:each | each acceptVisitor: self]