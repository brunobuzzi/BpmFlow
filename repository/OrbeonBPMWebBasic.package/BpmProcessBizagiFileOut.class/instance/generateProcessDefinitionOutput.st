file out
generateProcessDefinitionOutput

	fileOutObject getTopProcess hasSubProcesses
	ifTrue: [self downloadZipProcessMap] 
	ifFalse: [self downloadProcessMap].