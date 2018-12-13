xpdl events
acceptIntermediateEventNode: aXPDLIntermediateNode

	(visitedEvents identityIncludes: aXPDLIntermediateNode) 
	ifTrue: [^self]
	ifFalse: [visitedEvents add: aXPDLIntermediateNode].

	self acceptXpdlNode: aXPDLIntermediateNode.

	aXPDLIntermediateNode outTransitions do: [:each | each acceptVisitor: self]