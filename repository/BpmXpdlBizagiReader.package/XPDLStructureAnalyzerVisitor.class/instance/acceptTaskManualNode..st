other
acceptTaskManualNode: aXPDLTaskManualNode

	aXPDLTaskManualNode outTransitions do: [:each | each acceptVisitor: self ]