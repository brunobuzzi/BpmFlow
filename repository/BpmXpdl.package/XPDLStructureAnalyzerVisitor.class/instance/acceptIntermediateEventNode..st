xpdl events
acceptIntermediateEventNode: aXPDLIntermediateNode

	self acceptXpdlNode: aXPDLIntermediateNode.

	aXPDLIntermediateNode outTransitions do: [:each | each acceptVisitor: self]