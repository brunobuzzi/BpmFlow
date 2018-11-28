file out
generateProcessInstanceOutput

	fileOutObject getTopProcess hasSubProcesses
	ifTrue: [self downloadZipProcessMap] 
	ifFalse: [self downloadProcessMap].