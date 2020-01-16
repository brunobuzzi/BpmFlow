convenience
getProcessTemplateMethoNameFor: aBpmProcessInstance
	"Answer the name for the method template for process <aBpmProcessInstance>.
	1) Remove white spaces (not allowed in a method name)
	2) Remove hyphen  character - (not allowed in a method name)"

	^('xpdlGenerated_', 
		((aBpmProcessInstance processName withWithespaceRemoved) replaceAll: $- with: $_), 
		'_', 
		aBpmProcessInstance id printString) asSymbol