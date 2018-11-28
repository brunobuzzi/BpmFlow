svg generator
getSVGTitleForDefinition: aBpmProcessDefinition

	^'#', aBpmProcessDefinition processId printString, 
		' | Process Name: ', aBpmProcessDefinition processName