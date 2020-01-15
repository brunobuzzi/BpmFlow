convenience
getProcessTemplateMethoNameFor: aBpmProcessInstance
	"Answer the name for the method template for process <aBpmProcessInstance>.
	- Remove white spaces (not allowed in a method name)
	- Remove hyphen  character - (not allowed in a method name)"

	^('xpdlGenerated_', ((aBpmProcessInstance processName withWithespaceRemoved) replaceAll: $- with: $_), '_', aBpmProcessInstance id printString) asSymbol