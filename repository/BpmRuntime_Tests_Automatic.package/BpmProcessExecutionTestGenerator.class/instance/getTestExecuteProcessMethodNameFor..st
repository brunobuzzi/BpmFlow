convenience
getTestExecuteProcessMethodNameFor: aBpmProcessInstance

	^('testExecuteProcess_', 
		((aBpmProcessInstance processName withWithespaceRemoved) replaceAll: $- with: $_), 
		'_', 
		aBpmProcessInstance id printString)