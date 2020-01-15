cg createProcessDefinition
createXPDLTemplates

	procInstance getProcessesTreeAsCollection do: [:eachProc | | templateMethodName |
		templateMethodName := self getProcessTemplateMethoNameFor: eachProc.

	].