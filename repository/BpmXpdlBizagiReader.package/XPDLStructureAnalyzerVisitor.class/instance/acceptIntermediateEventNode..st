other
acceptIntermediateEventNode: aXPDLIntermediateNode

	aXPDLIntermediateNode outTransitions do: [:each | each acceptVisitor: self]