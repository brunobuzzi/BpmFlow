convenience
getProcessTemplateMethoNameFor: aBpmProcessInstance

	^('xpdlGenerated_', aBpmProcessInstance processName withWithespaceRemoved, aBpmProcessInstance id printString) asSymbol