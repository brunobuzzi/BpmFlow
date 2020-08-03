xpdl top elements
acceptWorkflowNode: aXPDLWorkflowProcess

	aXPDLWorkflowProcess startNodeIfNotNil: [aXPDLWorkflowProcess startNodeAcceptVisitor: self].

	aXPDLWorkflowProcess embeddedSubprocessesDo: [:each | each acceptVisitor: self]