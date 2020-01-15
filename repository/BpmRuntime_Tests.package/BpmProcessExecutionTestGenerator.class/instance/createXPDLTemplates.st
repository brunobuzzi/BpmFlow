cg createProcessDefinition
createXPDLTemplates
	"The receiver creates all templates method in <XPDLProcessDefinitionTemplate> class"
	| templateMethodStream |

	templateMethodStream := String new writeStream.
	procInstance getProcessesTreeAsCollection do: [:eachProc | | templateMethodName xpdlString |
		templateMethodName := self getProcessTemplateMethoNameFor: eachProc.
		templateMethodStream 
			nextPutAll: templateMethodName; cr; 
			nextPutAll: '^', eachProc definition xmlString quoted.
		xpdlString := XPDLProcessDefinitionTemplate class compile: templateMethodStream contents classified: 'automatically generated'.

	].