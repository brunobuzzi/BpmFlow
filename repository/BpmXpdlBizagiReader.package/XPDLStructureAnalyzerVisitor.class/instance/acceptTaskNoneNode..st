other
acceptTaskNoneNode: aXPDLTaskNoneNode

	aXPDLTaskNoneNode outTransitions do: [:each | each acceptVisitor: self ]