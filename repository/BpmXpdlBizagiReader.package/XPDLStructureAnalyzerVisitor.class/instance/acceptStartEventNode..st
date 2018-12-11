other
acceptStartEventNode: aXPDLStartNode

	aXPDLStartNode outTransitions do: [:each | each acceptVisitor: self]