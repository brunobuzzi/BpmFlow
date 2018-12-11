other
acceptTaskUserNode: aXPDLTaskUserNode

	XPDLTaskUserNode outTransitions do: [:each | each acceptVisitor: self ]