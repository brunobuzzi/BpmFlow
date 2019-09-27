xpdl top elements
acceptWorkflowNode: aXPDLWorkflowProcess

	aXPDLWorkflowProcess startNode ifNotNil: [aXPDLWorkflowProcess startNode acceptVisitor: self].

	aXPDLWorkflowProcess embeddedSubprocesses do: [:each | each acceptVisitor: self]