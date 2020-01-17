convenience
getTestExecuteSubProcessMethodNameFor: aBpmProcessInstance

	^('subprocessExecute_', 
		((aBpmProcessInstance processName withWithespaceRemoved) replaceAll: $- with: $_), 
		'_', 
		aBpmProcessInstance id printString)