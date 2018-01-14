other
getSVGTitleForProcess: aBpmProcessInstance

	^'#', aBpmProcessInstance id printString, 
		' | Process Name: ', aBpmProcessInstance processName,
		' | State: ', aBpmProcessInstance printProcessState,
		' | Creation: ', aBpmProcessInstance createdTime printString