events
acceptStartEventNode: aXPDLStartNode

	hasStartNode := true.

	self acceptXpdlNode: aXPDLStartNode.

	aXPDLStartNode outTransitions do: [:each | each acceptVisitor: self].