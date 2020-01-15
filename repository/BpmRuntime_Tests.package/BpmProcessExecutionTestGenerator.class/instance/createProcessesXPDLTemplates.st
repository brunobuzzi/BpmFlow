cg createProcessDefinition
createProcessesXPDLTemplates
	"The receiver creates all templates method in <XPDLProcessDefinitionTemplate> class.
	1- Get the XPDL source from each process.
	2- Compile a method with the XPDL source in <XPDLProcessDefinitionTemplate>"
	| templateMethodStream |

	templateMethodStream := String new writeStream.
	procInstance getProcessesTreeAsCollection do: [:eachProc | | templateMethodName xpdlString |
		templateMethodName := self getProcessTemplateMethoNameFor: eachProc.
		templateMethodStream 
			nextPutAll: templateMethodName; cr; 
			nextPutAll: '^', eachProc definition xmlString quoted.
		xpdlString := XPDLProcessDefinitionTemplate class compile: templateMethodStream contents classified: 'automatically generated'.

	].