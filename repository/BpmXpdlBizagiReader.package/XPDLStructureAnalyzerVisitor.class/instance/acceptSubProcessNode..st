other
acceptSubProcessNode: aXPDLSubProcessNode

	aXPDLSubProcessNode outTransitions do: [:each | each acceptVisitor: self ]