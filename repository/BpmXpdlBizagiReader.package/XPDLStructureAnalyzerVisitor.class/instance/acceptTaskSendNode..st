other
acceptTaskSendNode: aXPDLTaskSendNode

	aXPDLTaskSendNode outTransitions do: [:each | each acceptVisitor: self ]