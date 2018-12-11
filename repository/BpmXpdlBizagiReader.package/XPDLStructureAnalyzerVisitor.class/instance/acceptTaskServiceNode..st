other
acceptTaskServiceNode: aXPDLTaskServiceNode

	aXPDLTaskServiceNode outTransitions do: [:each | each acceptVisitor: self ]