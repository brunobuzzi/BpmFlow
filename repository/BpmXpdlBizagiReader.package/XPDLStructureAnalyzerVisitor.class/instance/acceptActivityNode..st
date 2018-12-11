other
acceptActivityNode: aXPDLActivityNode

	aXPDLActivityNode outTransitions do: [:each | each acceptVisitor: self ]