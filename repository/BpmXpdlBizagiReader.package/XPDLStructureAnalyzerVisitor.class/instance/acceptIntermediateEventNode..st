events
acceptIntermediateEventNode: aXPDLIntermediateNode

	aXPDLIntermediateNode outTransitions do: [:each | each acceptVisitor: self]