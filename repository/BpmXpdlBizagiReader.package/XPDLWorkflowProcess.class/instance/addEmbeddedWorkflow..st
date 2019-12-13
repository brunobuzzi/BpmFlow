embedded procs
addEmbeddedWorkflow: aXPDLWorkflowProcess
	"The receiver add the embedded workflow <aXPDLWorkflowProcess>"

	aXPDLWorkflowProcess parentWorkflow: self. 
	^embeddedSubprocesses at: aXPDLWorkflowProcess getName put: aXPDLWorkflowProcess