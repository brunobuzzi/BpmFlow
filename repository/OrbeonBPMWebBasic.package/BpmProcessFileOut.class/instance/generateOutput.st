file out
generateOutput

	fileOutObject isProcessDefinition
	ifTrue: [self generateProcessDefinitionOutput] 
	ifFalse: [self generateProcessInstanceOutput]