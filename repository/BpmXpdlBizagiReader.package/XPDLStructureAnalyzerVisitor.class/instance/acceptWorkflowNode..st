other
acceptWorkflowNode: aXPDLWorkflowProcess

	aXPDLWorkflowProcess startNode acceptVisitor: self.

	aXPDLWorkflowProcess embeddedSubprocesses do: [:each | each acceptVisitor: self]