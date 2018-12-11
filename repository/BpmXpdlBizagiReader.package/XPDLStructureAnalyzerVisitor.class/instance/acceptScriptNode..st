other
acceptScriptNode: aXPDLScriptNode

	aXPDLScriptNode outTransitions do: [:each | each acceptVisitor: self ]