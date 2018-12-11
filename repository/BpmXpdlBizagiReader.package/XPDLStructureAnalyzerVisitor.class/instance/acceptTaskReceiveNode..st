other
acceptTaskReceiveNode: aXPDLTaskReceiveNode

	aXPDLTaskReceiveNode outTransitions do: [:each | each acceptVisitor: self ]