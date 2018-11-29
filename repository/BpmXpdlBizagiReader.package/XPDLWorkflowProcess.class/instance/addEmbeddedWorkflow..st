other
addEmbeddedWorkflow: aXPDLWorkflowProcess

	aXPDLWorkflowProcess parentWorkflow: self. 
	^embeddedSubprocesses at: aXPDLWorkflowProcess getName put: aXPDLWorkflowProcess