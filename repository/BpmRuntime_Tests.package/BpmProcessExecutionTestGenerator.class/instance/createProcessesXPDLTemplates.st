cg createProcessDefinition
createProcessesXPDLTemplates
	"The receiver creates all templates method in <XPDLProcessDefinitionTemplate> class.
	1- Get the XPDL source from each process.
	2- Compile a method with the XPDL source in <XPDLProcessDefinitionTemplate>"

	procInstance getProcessesTreeAsCollection do: [:eachProc | | templateMethodStream templateMethodName |
		templateMethodStream := String new writeStream.
		templateMethodName := self getProcessTemplateMethoNameFor: eachProc.
		templateMethodStream 
			nextPutAll: templateMethodName; cr; 
			nextPutAll: '^', eachProc definition xmlString quoted.

		XPDLProcessDefinitionTemplate class compile: templateMethodStream contents classified: 'automatically generated'.

	].